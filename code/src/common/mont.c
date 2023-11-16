#include <stdio.h>
#include <string.h>
#include <assert.h>

#include "steps.h"
#include "mont.h"
#if defined AVX2
#include "../common/fp/avx2/fp-avx2.h"
#elif defined GMP
#include "../common/fp/gmp/fp-gmp.h"
#else
#include "../common/fp/mulx/fp.h"
#endif
#include "poly.h"
#include "int64mask.h"

// #define fp_cswap fp_cswap1

// precompute A24.x = A.x+2*A.z, A24.z = 4*A.z
void xA24(proj *A24, const proj *A)
{
    fp_double2(&A24->x, &A->z);
    fp_double2(&A24->z, (const fp *)&A24->x);
    fp_add2(&A24->x, &A->x);
}

static void x2(proj *P2, proj const *P)
{
    fp_add3(&P2->x, &P->x, &P->z);
    fp_sq1(&P2->x);
    fp_sub3(&P2->z, &P->x, &P->z);
    fp_sq1(&P2->z);
}

static void x2DBL(proj *Q, proj const *P2, const proj *A24, int Aaffine)
{
    fp a, b, c;
    fp_sub3(&c, &P2->x, &P2->z);
    if (Aaffine)
        fp_quadruple2(&b, &P2->z);
    else
        fp_mul3(&b, &A24->z, &P2->z);
    fp_mul3(&Q->x, &P2->x, (const fp *)&b);
    fp_mul3(&a, (const fp *)&c, &A24->x);
    fp_add2(&a, (const fp *)&b);
    fp_mul3(&Q->z, (const fp *)&a, (const fp *)&c);
}

void xDBLADD(proj *R, proj *S, proj const *P, proj const *Q, proj const *PQ, proj const *A24, int Aaffine)
{
    fp tmp0, tmp1, tmp2;

    fp_add3(&tmp0, &P->x, &P->z);
    fp_sub3(&tmp1, &P->x, &P->z);
    fp_sq2(&R->x, (const fp *)&tmp0);
    fp_sub3(&tmp2, &Q->x, &Q->z);
    fp_add3(&S->x, &Q->x, &Q->z);
    fp_mul2(&tmp0, (const fp *)&tmp2);
    fp_sq2(&R->z, (const fp *)&tmp1);
    fp_mul2(&tmp1, (const fp *)&S->x);
    fp_sub3(&tmp2, (const fp *)&R->x, (const fp *)&R->z);
    if (Aaffine)
        fp_quadruple1(&R->z);
    else
        fp_mul2(&R->z, &A24->z);
    fp_mul2(&R->x, (const fp *)&R->z);
    fp_mul3(&S->x, &A24->x, (const fp *)&tmp2);
    fp_sub3(&S->z, (const fp *)&tmp0, (const fp *)&tmp1);
    fp_add2(&R->z, (const fp *)&S->x);
    fp_add3(&S->x, (const fp *)&tmp0, (const fp *)&tmp1);
    fp_mul2(&R->z, (const fp *)&tmp2);
    fp_sq1(&S->z);
    fp_sq1(&S->x);
    fp_mul2(&S->z, &PQ->x);
    fp_mul2(&S->x, &PQ->z);
}

void xDBL(proj *Q, proj const *P, const proj *A24, int Aaffine)
{
    proj P2;
    x2(&P2, P);
    x2DBL(Q, &P2, A24, Aaffine);
}

void xADD(proj *S, proj const *P, proj const *Q, proj const *PQ)
{
    fp a, b, c, d;
    fp_add3(&a, &P->x, &P->z);
    fp_sub3(&b, &P->x, &P->z);
    fp_add3(&c, &Q->x, &Q->z);
    fp_sub3(&d, &Q->x, &Q->z);
    fp_mul2(&a, (const fp *)&d);
    fp_mul2(&b, (const fp *)&c);
    fp_add3(&c, (const fp *)&a, (const fp *)&b);
    fp_sub3(&d, (const fp *)&a, (const fp *)&b);
    fp_sq1(&c);
    fp_sq1(&d);
    fp_mul3(&S->x, &PQ->z, (const fp *)&c);
    fp_mul3(&S->z, &PQ->x, (const fp *)&d);
}

// goal: Q = any point having same order as lP
// where prime l has chain dac,daclen with 0 <= daclen <= maxdaclen
// time depends on maxdaclen, but not dac or daclen
// this implementation does not necessarily return Q=lP
// can simply return P if it notices that P has order <l
// note that Q buffer can overlap P buffer
// XXX: skip copies in cases where dac and daclen are specified to be public
// XXX: skip copies by unrolling
void xMUL_dac(proj *Q, proj const *A24, int Aaffine, proj const *P, long long dac, long long daclen, long long maxdaclen)
{
    proj Pinput = *P; // keeping copy since Q can overlap P
    proj P1 = Pinput;
    proj P2;
    xDBL(&P2, &P1, A24, Aaffine);
    proj P3;
    xADD(&P3, &P2, &P1, &P1);
    //   long long collision = fp_iszero(&Pinput.z);
    long long collision = fp_iszero(Pinput.z);

    for (;;)
    {
        long long want = 1 + int64mask_negative(daclen);
        proj_cmov(Q, &P3, want);
        if (maxdaclen <= 0)
            break;

        // invariant: P1+P2 = P3
        // odd dac: want to replace P1,P2,P3 with P1,P3,P1+P3
        // even dac: want to replace P1,P2,P3 with P2,P3,P2+P3

        proj_cswap(&P1, &P2, 1 - (dac & 1));
        // invariant: P1+P2 = P3
        // all cases: want to replace P1,P2,P3 with P1,P3,P1+P3

        // collision |= want&fp_iszero(&P2.z);
        collision |= want & fp_iszero(P2.z);

        proj next;
        xADD(&next, &P3, &P1, &P2);
        P2 = P3;
        P3 = next;

        maxdaclen -= 1;
        daclen -= 1;
        dac >>= 1;
    }

    proj_cmov(Q, &Pinput, collision);
    // in case of collision, input has the right order
}

/* Montgomery ladder. */
/* P must not be the unique point of order 2. */
/* k must have _at most_ kbits. */
void xMUL(proj *Q, proj const *A, int Aaffine, proj const *P, uintbig const *k, long long kbits)
{
    proj R = *P;
    proj A24;
    const proj Pcopy = *P; /* in case Q = P */

    fp_copy(Q->x, fp_1);
    fp_copy(Q->z, fp_0);

    xA24(&A24, A);

    long long prevbit = 0;
    while (kbits > 0)
    {
        --kbits;

        long long bit = uintbig_bit(k, kbits);
        long long bitxor = bit ^ prevbit;

        proj_cswap(Q, &R, bitxor);

        xDBLADD(Q, &R, Q, &R, &Pcopy, &A24, Aaffine);

        prevbit = bit;
    }
    proj_cswap(Q, &R, prevbit);
}

void xMUL_vartime(proj *Q, proj const *A, int Aaffine, proj const *P, uintbig const *k)
{
    long long kbits = UBITS;
    while (kbits && !uintbig_bit(k, kbits - 1))
        --kbits;
    xMUL(Q, A, Aaffine, P, k, kbits);
}

/* replace x with x^k y^8 */
/* constant-time 2-bit window algorithm copied from qisog */
static void powpow8mod(fp *x, const fp *y, uint64_t k, uint64_t kupper)
{
    long long bits = 5; /* XXX: also optimize smaller k */
    kupper >>= 5;
    while (kupper)
    {
        ++bits;
        kupper >>= 1;
    }

    fp x1;
    fp_copy(x1, *x);
    fp x2;
    fp_sq2(&x2, (const fp *)x);
    fp x3;
    fp_mul3(&x3, (const fp *)&x2, (const fp *)x);

    int xwritten = 0; /* otherwise *x is implicitly 1 */

    for (long long i = (bits - 1) & ~1; i >= 0; i -= 2)
    {
        if (xwritten)
        {
            fp_sq1(x);
            if (i == 2)
                fp_mul2(x, y);
            fp_sq1(x);
        }
        fp ram0;
        fp_copy(ram0, fp_1);
        fp ram1;
        fp_copy(ram1, x1);
        long long control1 = 1 & (k >> (i + 1));
        fp_cmov_ctidh(&ram0, (const fp *)&x2, control1);
        fp_cmov_ctidh(&ram1, (const fp *)&x3, control1);
        long long control0 = 1 & (k >> i);
        fp_cmov_ctidh(&ram0, (const fp *)&ram1, control0);

        if (xwritten)
            fp_mul2(x, (const fp *)&ram0);
        else
            fp_copy(*x, ram0);

        xwritten = 1;
    }
    assert(xwritten);
}

static void biquad_precompute_point(fp *precomp, const proj *Q)
{
    /* XXX: can do S-M tradeoff */

    fp_sq2(&precomp[0], &Q->x);
    fp_sq2(&precomp[1], &Q->z);
    fp_mul3(&precomp[2], &Q->x, &Q->z);
    fp_add3(&precomp[3], (const fp *)&precomp[2], (const fp *)&precomp[2]);
    fp_sub3(&precomp[4], (const fp *)&precomp[0], (const fp *)&precomp[1]);
    fp_sub3(&precomp[5], &Q->x, &Q->z);
    fp_sq1(&precomp[5]);
}

static void biquad_precompute_curve(fp *Aprecomp, const proj *P, const proj *A)
{
    fp Pplus;
    fp_add3(&Pplus, &P->x, &P->z);
    fp_sq1(&Pplus);
    fp PxPx;
    fp_sq2(&PxPx, &P->x);
    fp PzPz;
    fp_sq2(&PzPz, &P->z);
    fp PxPz2;
    fp_sub3(&PxPz2, (const fp *)&Pplus, (const fp *)&PxPx);
    fp_sub2(&PxPz2, (const fp *)&PzPz);

    fp_mul3(&Aprecomp[0], (const fp *)&A->z, (const fp *)&PxPx);
    fp_mul3(&Aprecomp[1], (const fp *)&A->z, (const fp *)&PzPz);
    fp_mul3(&Aprecomp[2], (const fp *)&A->z, (const fp *)&PxPz2);
    fp_mul3(&Aprecomp[3], (const fp *)&A->x, (const fp *)&PxPz2);

    fp t;
    fp_add3(&t, (const fp *)&Aprecomp[0], (const fp *)&Aprecomp[1]);
    fp_sub3(&Aprecomp[5], (const fp *)&t, (const fp *)&Aprecomp[2]);
    fp_add3(&Aprecomp[6], (const fp *)&t, (const fp *)&Aprecomp[2]);

    fp_add3(&Aprecomp[7], (const fp *)&Aprecomp[3], (const fp *)&Aprecomp[6]);
    fp_neg1(&Aprecomp[7]);

    fp_sub3(&Aprecomp[4], (const fp *)&Aprecomp[0], (const fp *)&Aprecomp[1]);
}

// /* biquad and biquad_inv */
// static void biquad_both(fp *out,fp *outinv,const proj *P,const proj *Q,const proj *A)
// {
//   fp PxQx; fp_mul3(&PxQx,&P->x,&Q->x);
//   fp PxQz; fp_mul3(&PxQz,&P->x,&Q->z);
//   fp PzQx; fp_mul3(&PzQx,&P->z,&Q->x);
//   fp PzQz; fp_mul3(&PzQz,&P->z,&Q->z);
//   fp PPQQ; fp_mul3(&PPQQ,&PxQx,&PzQz);
//   fp_add2(&PPQQ,&PPQQ);
//   fp_mul2(&PPQQ,&A->x);

//   fp s,t;

//   fp_add3(&s,&PxQx,&PzQz);
//   fp_add3(&t,&PzQx,&PxQz);
//   fp_mul3(&out[1],&s,&t);
//   fp_mul2(&out[1],&A->z);
//   fp_add2(&out[1],&PPQQ);
//   fp_add2(&out[1],&out[1]);
//   fp_neg1(&out[1]); /* XXX: push through other computations? */

//   fp_sub3(&out[2],&PxQz,&PzQx);
//   fp_sq1(&out[2]);
//   fp_mul2(&out[2],&A->z);

//   fp_sub3(&out[0],&PxQx,&PzQz);
//   fp_sq1(&out[0]);
//   fp_mul2(&out[0],&A->z);

//   /* ----- */

//   fp_add3(&s,&PxQz,&PzQx);
//   fp_add3(&t,&PzQz,&PxQx);
//   fp_mul3(&outinv[1],&s,&t);
//   fp_mul2(&outinv[1],&A->z);
//   fp_add2(&outinv[1],&PPQQ);
//   fp_add2(&outinv[1],&outinv[1]);
//   fp_neg1(&outinv[1]); /* XXX: push through other computations? */

//   fp_copy(outinv[2], out[0]);
//   fp_copy(outinv[0], out[2]);
// }

// /* biquad_1 and biquad_minus1 */
// static void biquad_pm1(fp *outplus,fp *outminus,const proj *P,const proj *A)
// {
//   fp Pplus; fp_add3(&Pplus,&P->x,&P->z);
//   fp Pminus; fp_sub3(&Pminus,&P->x,&P->z);
//   fp_sq1(&Pplus);
//   fp_sq1(&Pminus);

//   fp_mul3(&outplus[0],&Pminus,&A->z);
//   fp_copy(outplus[2], outplus[0]);
//   fp_mul3(&outminus[0],&Pplus,&A->z);
//   fp_copy(outminus[2], outminus[0]);

//   fp u;
//   fp_sub3(&u,&Pminus,&Pplus);
//   fp_mul2(&u,&A->x);

//   fp t;
//   fp_add3(&t,&outminus[0],&outminus[0]);
//   fp_sub3(&outplus[1],&u,&t);

//   fp_add3(&t,&outplus[0],&outplus[0]);
//   fp_sub3(&outminus[1],&t,&u);
// }

static void biquad_postcompute_curve(fp *outplus, fp *outminus, const fp *Aprecomp)
{
    fp_copy(outplus[0], Aprecomp[5]);
    fp_copy(outplus[2], Aprecomp[5]);
    fp_copy(outminus[0], Aprecomp[6]);
    fp_copy(outminus[2], Aprecomp[6]);

    fp_add3(&outplus[1], &Aprecomp[7], &Aprecomp[7]);
    fp_add3(&outminus[1], &Aprecomp[5], &Aprecomp[3]);
    fp_double1(&outminus[1]);
}

static void biquad_postcompute_point(fp *out, const fp *precomp, const fp *Aprecomp)
{
    fp v;

    fp_mul3(&out[1], (const fp *)&Aprecomp[7], (const fp *)&precomp[3]);
    fp_mul3(&v, (const fp *)&Aprecomp[2], (const fp *)&precomp[5]);
    fp_sub2(&out[1], (const fp *)&v);

    fp_mul3(&out[2], (const fp *)&Aprecomp[0], (const fp *)&precomp[1]);
    fp_mul3(&v, (const fp *)&Aprecomp[2], (const fp *)&precomp[2]);
    fp_sub2(&out[2], (const fp *)&v);
    fp_mul3(&v, (const fp *)&Aprecomp[1], (const fp *)&precomp[0]);
    fp_add2(&out[2], (const fp *)&v);

    fp_mul3(&out[0], (const fp *)&Aprecomp[4], (const fp *)&precomp[4]);
    fp_add2(&out[0], (const fp *)&out[2]);
}

// // replace x with x^k
// static void exp_by_squaring_(fp* x, uint64_t k)
// {
//         fp result1;
//         fp_copy(result1, fp_1);

//     while (k)
//     {
//         if (k & 1){
//           fp_mul2(&result1, x);
//         }
//         fp_sq1(x);
//         k >>= 1;
//     }

//     fp_cswap_ctidh(&result1, x, 1);

// }

//simultaneous square-and-multiply, computes x^exp and y^exp
static void exp_by_squaring_(fp *x, fp *y, uint64_t exp)
{
    fp result1, result2;
    fp_copy(result1, fp_1);
    fp_copy(result2, fp_1);

    while (exp)
    {
        if (exp & 1)
        {
            fp_mul2(&result1, (const fp *)x);
            fp_mul2(&result2, (const fp *)y);
        }

        fp_sq1(x);
        fp_sq1(y);
        exp >>= 1;
    }

    fp_cswap(result1, *x, 1);
    fp_cswap(result2, *y, 1);
}

/* computes the isogeny with kernel point K of order k */
/* returns the new curve coefficient A and the images of P[0],P[1],...,P[Plen-1] */
/* k is odd; klower <= k <= kupper */
/* goal here is for timing to not leak k */
void xISOG_matryoshka(proj *A, proj *P, long long Plen, proj const *K, long long k, long long klower, long long kupper)
{
    assert(3 <= klower);
    assert(klower & 1);
    assert(kupper & 1);

    long long sqrtvelu = 0;
    long long bs = 0;
    long long gs = 0;

    steps(&bs, &gs, klower);
    if (bs)
    {
        sqrtvelu = 1;
        assert(bs > 0);
        assert(gs > 0);
        assert(!(bs & 1));
    }

    fp tmp0, tmp1, tmp2, tmp3, tmp4;

    proj A24;
    proj Aed; // twisted Edwards curve coefficients

    // A -> (A : C)
    // Aed.z = 2C
    fp_double2(&Aed.z, (const fp *)&A->z);

    // Aed.x = A + 2C
    fp_add3(&Aed.x, (const fp *)&A->x, (const fp *)&Aed.z);

    // A24.x = A + 2C
    fp_copy(A24.x, Aed.x);

    // A24.z = 4C
    fp_double2(&A24.z, (const fp *)&Aed.z);

    // Aed.z = A - 2C
    fp_sub3(&Aed.z, (const fp *)&A->x, (const fp *)&Aed.z);

    proj M[kupper]; /* XXX: use less space */
#ifndef NDEBUG
    int Minit[kupper];

    for (long long s = 0; s < kupper; ++s)
        Minit[s] = 0;

    Minit[1] = 1;
#endif
    M[1] = *K;
    xDBL(&M[2], K, &A24, 0);
#ifndef NDEBUG
    Minit[2] = 1;
#endif

    if (sqrtvelu)
    {
        for (long long s = 3; s < kupper; ++s)
        {
            if (s & 1)
            {
                long long i = s / 2;
                assert(s == 2 * i + 1);
                if (i < bs)
                {
                    if (s == 3)
                    {
                        assert(Minit[1]);
                        assert(Minit[2]);
                        xADD(&M[s], &M[2], &M[1], &M[1]);
#ifndef NDEBUG
                        Minit[s] = 1;
#endif
                        continue;
                    }
                    assert(Minit[s - 2]);
                    assert(Minit[s - 4]);
                    assert(Minit[2]);
                    xADD(&M[s], &M[s - 2], &M[2], &M[s - 4]);
#ifndef NDEBUG
                    Minit[s] = 1;
#endif
                    continue;
                }
            }
            else
            {
                long long i = s / 2 - 1;
                assert(s == 2 * i + 2);
                if (i < (kupper - 1) / 2 - 2 * bs * gs)
                {
                    if (s == 4)
                    {
                        assert(Minit[2]);
                        xDBL(&M[s], &M[2], &A24, 0);
#ifndef NDEBUG
                        Minit[s] = 1;
#endif
                        continue;
                    }
                    assert(Minit[s - 2]);
                    assert(Minit[s - 4]);
                    assert(Minit[2]);
                    xADD(&M[s], &M[s - 2], &M[2], &M[s - 4]);
#ifndef NDEBUG
                    Minit[s] = 1;
#endif
                    continue;
                }
            }

            if (bs > 0)
            {
                if (s == 2 * bs)
                {
                    assert(Minit[bs - 1]);
                    assert(Minit[bs + 1]);
                    assert(Minit[2]);
                    xADD(&M[s], &M[bs + 1], &M[bs - 1], &M[2]);
#ifndef NDEBUG
                    Minit[s] = 1;
#endif
                    continue;
                }
                else if (s == 4 * bs)
                {
                    assert(Minit[2 * bs]);
                    xDBL(&M[s], &M[2 * bs], &A24, 0);
#ifndef NDEBUG
                    Minit[s] = 1;
#endif
                    continue;
                }
                else if (s == 6 * bs)
                {
                    assert(Minit[2 * bs]);
                    assert(Minit[4 * bs]);
                    xADD(&M[s], &M[4 * bs], &M[2 * bs], &M[2 * bs]);
#ifndef NDEBUG
                    Minit[s] = 1;
#endif
                    continue;
                }
                else if (s % (4 * bs) == 2 * bs)
                {
                    long long j = s / (4 * bs);
                    assert(s == 2 * bs * (2 * j + 1));
                    if (j < gs)
                    {
                        assert(Minit[s - 4 * bs]);
                        assert(Minit[s - 8 * bs]);
                        assert(Minit[4 * bs]);
                        xADD(&M[s], &M[s - 4 * bs], &M[4 * bs], &M[s - 8 * bs]);
#ifndef NDEBUG
                        Minit[s] = 1;
#endif
                        continue;
                    }
                }
            }
        }
    }
    else
    {
        for (long long i = 3; i <= (kupper - 1) / 2; ++i)
        {
#ifndef NDEBUG
            Minit[i] = 1;
#endif
            xADD(&M[i], &M[i - 1], K, &M[i - 2]);
        }
    }

    proj Abatch;
    fp_copy(Abatch.x, fp_1);
    fp_copy(Abatch.z, fp_1);
    long long fixPlen = 0;
    if(Plen>0) {
        fixPlen = Plen;
    } else {
        fixPlen = 1;
    }
    proj Qbatch[fixPlen];
    for (long long h = 0; h < Plen; ++h)
    {
        fp_copy(Qbatch[h].x, fp_1);
        fp_copy(Qbatch[h].z, fp_1);
    }
    fp Psum[fixPlen], Pdif[fixPlen];
    for (long long h = 0; h < Plen; ++h)
    {
        //precomputations
        // ( X + Z )
        fp_add3(&Psum[h], (const fp *)&P[h].x, (const fp *)&P[h].z);
        // ( X - Z )
        fp_sub3(&Pdif[h], (const fp *)&P[h].x, (const fp *)&P[h].z);
    }

    if (sqrtvelu)
    {
        long long TIlen = 2 * bs + poly_tree1size(bs);
        fp TI[TIlen];

        for (long long i = 0; i < bs; ++i)
        {
            assert(Minit[2 * i + 1]);
            fp_neg2(&TI[2 * i], (const fp *)&M[2 * i + 1].x);
            fp_copy(TI[2 * i + 1], M[2 * i + 1].z);
        }

        poly_tree1(TI + 2 * bs, (const fp *)TI, bs);

        fp Aprecomp[gs][8];
        fp T1[3 * gs];
        fp Tminus1[3 * gs];

        for (long long j = 0; j < gs; ++j)
        {
            assert(Minit[2 * bs * (2 * j + 1)]);
            biquad_precompute_curve(Aprecomp[j], &M[2 * bs * (2 * j + 1)], A);
            biquad_postcompute_curve(T1 + 3 * j, Tminus1 + 3 * j, (const fp *)Aprecomp[j]);
        }
        poly_multiprod2_selfreciprocal(T1, gs);
        poly_multiprod2_selfreciprocal(Tminus1, gs);

        long long precompsize = poly_multieval_precomputesize(bs, 2 * gs + 1);
        fp precomp[precompsize];
        poly_multieval_precompute(precomp, bs, 2 * gs + 1, (const fp *)TI, (const fp *)TI + 2 * bs);

        fp v[bs];

        poly_multieval_postcompute(v, bs, (const fp *)T1, 2 * gs + 1, (const fp *)TI, (const fp *)TI + 2 * bs, (const fp *)precomp);
        fp_copy(Abatch.x, v[0]);
        for (long long i = 1; i < bs; ++i)
            fp_mul2(&Abatch.x, (const fp *)&v[i]);

        poly_multieval_postcompute(v, bs, (const fp *)Tminus1, 2 * gs + 1, (const fp *)TI, (const fp *)TI + 2 * bs, (const fp *)precomp);
        fp_copy(Abatch.z, v[0]);
        for (long long i = 1; i < bs; ++i)
            fp_mul2(&Abatch.z, (const fp *)&v[i]);

        for (long long h = 0; h < Plen; ++h)
        {
            fp Pprecomp[6];
            biquad_precompute_point(Pprecomp, &P[h]);

            fp TP[3 * gs];
            for (long long j = 0; j < gs; ++j)
                biquad_postcompute_point(TP + 3 * j, (const fp *)Pprecomp, (const fp *)Aprecomp[j]);
            poly_multiprod2(TP, gs);

            fp TPinv[2 * gs + 1];
            for (long long j = 0; j < 2 * gs + 1; ++j)
                fp_copy(TPinv[j], TP[2 * gs - j]);

            poly_multieval_postcompute(v, bs, (const fp *)TP, 2 * gs + 1, (const fp *)TI, (const fp *)TI + 2 * bs, (const fp *)precomp);
            fp_copy(Qbatch[h].z, v[0]);
            for (long long i = 1; i < bs; ++i)
                fp_mul2(&Qbatch[h].z, (const fp *)&v[i]);

            poly_multieval_postcompute(v, bs, (const fp *)TPinv, 2 * gs + 1, (const fp *)TI, (const fp *)TI + 2 * bs, (const fp *)precomp);
            fp_copy(Qbatch[h].x, v[0]);
            for (long long i = 1; i < bs; ++i)
                fp_mul2(&Qbatch[h].x, (const fp *)&v[i]);
        }

        long long ignore = (k - 1) / 2 - 2 * bs * gs; /* skip i >= ignore */
        for (long long i = 0; i < (kupper - 1) / 2 - 2 * bs * gs; ++i)
        {
            long long want = -((i - ignore) >> 61); /* 61 to reduce risk of compiler doing something silly */
            assert(Minit[2 * i + 2]);
            fp_sub3(&tmp4, (const fp *)&M[2 * i + 2].x, (const fp *)&M[2 * i + 2].z);
            fp_add3(&tmp3, (const fp *)&M[2 * i + 2].x, (const fp *)&M[2 * i + 2].z);
            fp_mul3(&tmp2, (const fp *)&Abatch.x, (const fp *)&tmp4);
            fp_cmov_ctidh(&Abatch.x, (const fp *)&tmp2, want);
            fp_mul3(&tmp2, (const fp *)&Abatch.z, (const fp *)&tmp3);
            fp_cmov_ctidh(&Abatch.z, (const fp *)&tmp2, want);
            for (long long h = 0; h < Plen; ++h)
            {
                fp_mul3(&tmp1, (const fp *)&tmp4, (const fp *)&Psum[h]);
                fp_mul3(&tmp0, (const fp *)&tmp3, (const fp *)&Pdif[h]);
                fp_add3(&tmp2, (const fp *)&tmp0, (const fp *)&tmp1);
                fp_mul2(&tmp2, (const fp *)&Qbatch[h].x);
                fp_cmov_ctidh(&Qbatch[h].x, (const fp *)&tmp2, want);
                fp_sub3(&tmp2, (const fp *)&tmp0, (const fp *)&tmp1);
                fp_mul2(&tmp2, (const fp *)&Qbatch[h].z);
                fp_cmov_ctidh(&Qbatch[h].z, (const fp *)&tmp2, want);
            }
        }
    }
    else
    {
        // no sqrtvelu
        long long ignore = (k + 1) / 2; /* skip i >= ignore */

        assert(Minit[1]);
        fp_sub3(&tmp4, (const fp *)&M[1].x, (const fp *)&M[1].z);
        fp_add3(&tmp3, (const fp *)&M[1].x, (const fp *)&M[1].z);
        fp_copy(Abatch.x, tmp4);
        fp_copy(Abatch.z, tmp3);

        for (long long h = 0; h < Plen; ++h)
        {
            fp_mul3(&tmp1, (const fp *)&tmp4, (const fp *)&Psum[h]);
            fp_mul3(&tmp0, (const fp *)&tmp3, (const fp *)&Pdif[h]);
            fp_add3(&Qbatch[h].x, (const fp *)&tmp0, (const fp *)&tmp1);
            fp_sub3(&Qbatch[h].z, (const fp *)&tmp0, (const fp *)&tmp1);
        }

        for (long long i = 2; i <= (kupper - 1) / 2; ++i)
        {
            long long want = -((i - ignore) >> 61);
            // 2 < i < (k-1)/2
            assert(Minit[i]);
            fp_sub3(&tmp4, (const fp *)&M[i].x, (const fp *)&M[i].z);
            fp_add3(&tmp3, (const fp *)&M[i].x, (const fp *)&M[i].z);
            fp_mul3(&tmp2, (const fp *)&Abatch.x, (const fp *)&tmp4);
            fp_cmov_ctidh(&Abatch.x, (const fp *)&tmp2, want);
            fp_mul3(&tmp2, (const fp *)&Abatch.z, (const fp *)&tmp3);
            fp_cmov_ctidh(&Abatch.z, (const fp *)&tmp2, want);
            for (long long h = 0; h < Plen; ++h)
            {
                // point evaluation
                fp_mul3(&tmp1, (const fp *)&tmp4, (const fp *)&Psum[h]);
                fp_mul3(&tmp0, (const fp *)&tmp3, (const fp *)&Pdif[h]);
                fp_add3(&tmp2, (const fp *)&tmp0, (const fp *)&tmp1);
                fp_mul2(&tmp2, (const fp *)&Qbatch[h].x);
                fp_cmov_ctidh(&Qbatch[h].x, (const fp *)&tmp2, want);
                fp_sub3(&tmp2, (const fp *)&tmp0, (const fp *)&tmp1);
                fp_mul2(&tmp2, (const fp *)&Qbatch[h].z);
                fp_cmov_ctidh(&Qbatch[h].z, (const fp *)&tmp2, want);
            }
        }
    }

    for (long long h = 0; h < Plen; ++h)
    {
        // point evaluation
        // [∏( X − Z )( X i + Z i ) + ( X + Z )( X i − Z i )]^2
        fp_sq1(&Qbatch[h].x);
        fp_sq1(&Qbatch[h].z);

        // X' = X * Qbatch[h].x
        // X' = X * [∏( X − Z )( X i + Z i ) + ( X + Z )( X i − Z i )]^2
        fp_mul2(&P[h].x, (const fp *)&Qbatch[h].x);
        fp_mul2(&P[h].z, (const fp *)&Qbatch[h].z);
    }

    // Aed.x =  Aed.x^k * Abatch.z^8
    powpow8mod(&Aed.x, (const fp *)&Abatch.z, k, kupper);
    // Aed.z =  Aed.z^k * Abatch.x^8
    powpow8mod(&Aed.z, (const fp *)&Abatch.x, k, kupper);

    //compute Montgomery params
    // ( A' : C' ) = ( 2 ( a'_E + d'_E ) : a'_E − d'_E )
    fp_add3(&A->x, (const fp *)&Aed.x, (const fp *)&Aed.z);
    fp_sub3(&A->z, (const fp *)&Aed.x, (const fp *)&Aed.z);
    fp_double1(&A->x);
}

void xISOG(proj *A, proj *P, long long Plen, proj const *K, long long k)
{
    xISOG_matryoshka(A, P, Plen, K, k, k, k);
}

void xISOG_old(proj *A, proj *P, proj const *K, long long k)
{
    assert(k >= 3);
    assert(k % 2 == 1);

    fp tmp0, tmp1, tmp2, Psum, Pdif;
    proj Q, Aed, prod;

    fp_add3(&Aed.z, (const fp *)&A->z, (const fp *)&A->z); //compute twisted Edwards curve coefficients
    fp_add3(&Aed.x, (const fp *)&A->x, (const fp *)&Aed.z);
    fp_sub3(&Aed.z, (const fp *)&A->x, (const fp *)&Aed.z);

    fp_add3(&Psum, (const fp *)&P->x, (const fp *)&P->z); //precomputations
    fp_sub3(&Pdif, (const fp *)&P->x, (const fp *)&P->z);

    fp_sub3(&prod.x, &K->x, &K->z);
    fp_add3(&prod.z, &K->x, &K->z);

    fp_mul3(&tmp1, (const fp *)&prod.x, (const fp *)&Psum);
    fp_mul3(&tmp0, (const fp *)&prod.z, (const fp *)&Pdif);
    fp_add3(&Q.x, (const fp *)&tmp0, (const fp *)&tmp1);
    fp_sub3(&Q.z, (const fp *)&tmp0, (const fp *)&tmp1);

    proj M[k];
    proj A24;
    xA24(&A24, A);

    M[0] = *K;
    xDBL(&M[1], K, &A24, 0);
    for (long long i = 2; i < k / 2; ++i)
    {
        xADD(&M[i], &M[(i - 1)], K, &M[(i - 2)]);
    }

    for (long long i = 1; i < k / 2; ++i)
    {
        fp_sub3(&tmp1, (const fp *)&M[i].x, (const fp *)&M[i].z);
        fp_add3(&tmp0, (const fp *)&M[i].x, (const fp *)&M[i].z);
        fp_mul2(&prod.x, (const fp *)&tmp1);
        fp_mul2(&prod.z, (const fp *)&tmp0);
        fp_mul2(&tmp1, (const fp *)&Psum);
        fp_mul2(&tmp0, (const fp *)&Pdif);
        fp_add3(&tmp2, (const fp *)&tmp0, (const fp *)&tmp1);
        fp_mul2(&Q.x, (const fp *)&tmp2);
        fp_sub3(&tmp2, (const fp *)&tmp0, (const fp *)&tmp1);
        fp_mul2(&Q.z, (const fp *)&tmp2);
    }

    // point evaluation
    fp_sq1(&Q.x);
    fp_sq1(&Q.z);
    fp_mul2(&P->x, (const fp *)&Q.x);
    fp_mul2(&P->z, (const fp *)&Q.z);

    //compute Aed.x^k, Aed.z^k
    exp_by_squaring_(&Aed.x, &Aed.z, k);

    //compute prod.x^8, prod.z^8
    fp_sq1(&prod.x);
    fp_sq1(&prod.x);
    fp_sq1(&prod.x);
    fp_sq1(&prod.z);
    fp_sq1(&prod.z);
    fp_sq1(&prod.z);

    //compute image curve parameters
    fp_mul2(&Aed.z, (const fp *)&prod.x);
    fp_mul2(&Aed.x, (const fp *)&prod.z);

    //compute Montgomery params
    fp_add3(&A->x, (const fp *)&Aed.x, (const fp *)&Aed.z);
    fp_sub3(&A->z, (const fp *)&Aed.x, (const fp *)&Aed.z);
    fp_add2(&A->x, (const fp *)&A->x);
}
