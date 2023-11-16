#ifndef POLY_H
#define POLY_H

#if defined AVX2
    #include "../common/fp/avx2/fp-avx2.h"
#elif defined GMP
    #include "../common/fp/gmp/fp-gmp.h"
#elif defined KARATSUBA
    #include "../common/fp/karatsuba/fp-karatsuba.h"
#else
    #include "../common/fp/mulx/fp.h"
#endif
#include "../common/namespace.h"

#define poly_mul COMMON(poly_mul)
void poly_mul(fp *c,const fp *a,long long alen,const fp *b,long long blen);

#define poly_mul_low COMMON(poly_mul_low)
/* assumes !alen or !blen or clen <= alen+blen-1 */
void poly_mul_low(fp *c,long long clen,const fp *a,long long alen,const fp *b,long long blen);

#define poly_mul_high COMMON(poly_mul_high)
/* assumes !alen or !blen or cstart <= alen+blen-1 */
void poly_mul_high(fp *c,long long cstart,const fp *a,long long alen,const fp *b,long long blen);

#define poly_mul_mid COMMON(poly_mul_mid)
/* assumes !alen or !blen or: 0 <= cstart; 0 <= clen; cstart+clen <= alen+blen-1 */
void poly_mul_mid(fp *c,long long cstart,long long clen,const fp *a,long long alen,const fp *b,long long blen);

#define poly_mul_selfreciprocal COMMON(poly_mul_selfreciprocal)
/* input (and output) polynomials are self-reciprocal */
void poly_mul_selfreciprocal(fp *c,const fp *a,long long alen,const fp *b,long long blen);

/* input: T[0...3n-1] has n 3-coeff polys */
/* output: T[0...2n] has 1 (2n+1)-coeff poly */
/* namely the product of the original polys */
#define poly_multiprod2 COMMON(poly_multiprod2)
void poly_multiprod2(fp *T,long long n);

#define poly_multiprod2_selfreciprocal COMMON(poly_multiprod2_selfreciprocal)
/* poly_multiprod2 with polys guaranteed to be self-reciprocal */
void poly_multiprod2_selfreciprocal(fp *T,long long n);

/* XXX: should integrate this into multieval_precompute */
/* input: P[0...2n-1] has n 2-coeff polys */
/* output: number of coeffs in product tree (minus n) */
/* tree itself (without P) is stored in T */
/* for n>=2, product is stored in final n+1 coeffs of T */
#define poly_tree1 COMMON(poly_tree1)
long long poly_tree1(fp *T,const fp *P,long long n);

#define poly_tree1size COMMON(poly_tree1size)
long long poly_tree1size(long long n);

/* input: polynomial f with flen>0 coeffs */
/* output: n scaled values v[0],...,v[n-1] of f */
/* evaluation points: roots of the n 2-coeff polys in P */
/* another input: T from poly_tree1 */
/* scaling: v[i] is value multiplied by a function of (P,i) */
/* namely a product of powers of leading coefficients from P */
#define poly_multieval COMMON(poly_multieval)
void poly_multieval(fp *v,long long n,const fp *f,long long flen,const fp *P,const fp *T);

#define poly_multieval_precompute  COMMON(poly_multieval_precompute)
void poly_multieval_precompute(fp *precomp,long long n,long long flen,const fp *P,const fp *T);

#define poly_multieval_precomputesize COMMON(poly_multieval_precomputesize)
long long poly_multieval_precomputesize(long long n,long long flen);

#define poly_multieval_postcompute COMMON(poly_multieval_postcompute)
void poly_multieval_postcompute(fp *v,long long n,const fp *f,long long flen,const fp *P,const fp *T,const fp *precomp);

#endif
