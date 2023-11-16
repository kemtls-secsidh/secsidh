#include <string.h>
#include <assert.h>

#include "csidh.h"
#include "primes.h"
#include "int64mask.h"
#include "elligator.h"
#include "random.h"
// #include "crypto_declassify.h"

const public_key base = {0}; /* A = 0 */

static void multiples(proj Q[], proj const P, proj const A)
{
    int j;
    proj_copy(&Q[0], &P);
    for (j = 3; j < (int)N; j++)
        xMUL_dac(&Q[0], &A, 1, &Q[0], primes_dac[j], primes_daclen[j], primes_daclen[j]);

    //  --- multiplying by 3
    xMUL_dac(&Q[1], &A, 1, &Q[0], primes_dac[0], primes_daclen[0], primes_daclen[0]);
    xMUL_dac(&Q[1], &A, 1, &Q[1], primes_dac[0], primes_daclen[0], primes_daclen[0]);
    //  --- multiplying by 5
    xMUL_dac(&Q[0], &A, 1, &Q[0], primes_dac[1], primes_daclen[1], primes_daclen[1]);
    xMUL_dac(&Q[0], &A, 1, &Q[0], primes_dac[1], primes_daclen[1], primes_daclen[1]);
    xMUL_dac(&Q[2], &A, 1, &Q[1], primes_dac[1], primes_daclen[1], primes_daclen[1]);
    xMUL_dac(&Q[2], &A, 1, &Q[2], primes_dac[1], primes_daclen[1], primes_daclen[1]);
    //  --- multiplying by 7
    xMUL_dac(&Q[0], &A, 1, &Q[0], primes_dac[2], primes_daclen[2], primes_daclen[2]);
    xMUL_dac(&Q[0], &A, 1, &Q[0], primes_dac[2], primes_daclen[2], primes_daclen[2]);
    xMUL_dac(&Q[1], &A, 1, &Q[1], primes_dac[2], primes_daclen[2], primes_daclen[2]);
    xMUL_dac(&Q[1], &A, 1, &Q[1], primes_dac[2], primes_daclen[2], primes_daclen[2]);
}

// Obtaining points of full order
void fulltorsion_points(fp u, fp const a)
{
    proj Tp, Tm, Pp[N], Aux_Tp[3], Pm[N], Aux_Tm[3], A;
    int j;
    // int ui = 0;

    // Convert curve to projective Montgomery form (A' + 2C : 4C)
    fp_copy(A.x, a);
    fp_set1(A.z);
    fp_add(A.z, A.z, A.z); // 2C
    fp_add(A.x, A.x, A.z); // A' + 2C
    fp_add(A.z, A.z, A.z); // 4C

    fp_set0(u); // u <- 0
    uint8_t boolp = 0, boolm = 0;
    do
    {
        fp_add(u, u, fp_1); // u <- u + 1 ... Recall, 1 must be in Montgomery domain
        elligator_seeded(&Tp, &Tm, &A, (const fp *)u);
        // ---
        xmul_cofactor(&Tp, &Tp, &A);
        multiples(Aux_Tp, Tp, A);
        if (fp_iszero(Aux_Tp[0].z) | fp_iszero(Aux_Tp[1].z) | fp_iszero(Aux_Tp[2].z))
            continue;
        // ---
        // ---> This can be removed for wd1 style
        xmul_cofactor(&Tm, &Tm, &A);
        multiples(Aux_Tm, Tm, A);
        if (fp_iszero(Aux_Tm[0].z) | fp_iszero(Aux_Tm[1].z) | fp_iszero(Aux_Tm[2].z))
            continue;
        // <---

        // Checking if Tp is an order (p+1)/(2^e)
        proj_copy(&Pp[0], &Tp);
        cofactor_multiples(Pp, A, 0, N);
        boolp = 1;
        boolp &= (1 - fp_iszero(Pp[0].z)) | (1 - fp_iszero(Aux_Tp[0].z));
        boolp &= (1 - fp_iszero(Pp[1].z)) | (1 - fp_iszero(Aux_Tp[1].z));
        boolp &= (1 - fp_iszero(Pp[2].z)) | (1 - fp_iszero(Aux_Tp[2].z));
        for (j = 3; j < (int)N; j++)
            boolp &= (1 - fp_iszero(Pp[j].z));

        if (1 - boolp)
            continue;

        // ---> This can be removed for wd1 style
        // Checking if Tm is an order (p+1)/(2^e)
        proj_copy(&Pm[0], &Tm);
        cofactor_multiples(Pm, A, 0, N);

        boolm = 1;
        boolm &= (1 - fp_iszero(Pm[0].z)) | (1 - fp_iszero(Aux_Tm[0].z));
        boolm &= (1 - fp_iszero(Pm[1].z)) | (1 - fp_iszero(Aux_Tm[1].z));
        boolm &= (1 - fp_iszero(Pm[2].z)) | (1 - fp_iszero(Aux_Tm[2].z));
        for (j = 3; j < (int)N; j++)
            boolm &= (1 - fp_iszero(Pm[j].z));

        if (1 - boolm)
            continue;
        // <---
    } while ((1 - boolp) | (1 - boolm));
    fp_dec(u, (uint64_t* const)u);    
}

int8_t action_strategy(public_key *out, fp const *in, private_key const *priv)
{
    init_counters();

    int8_t error = 0;

    proj ramifications[2 * NUMBER_OF_POINTS] = {0};
    int inner,
        block = 0, // current size of ramifications
        pos,       // index of the current small odd prime to be processed
        k = 0;     // strategy element

    int64_t moves = 0, // required for reaching an torsion-(l_pos) point
        xmul_counter[NUMBER_OF_POINTS] = {0},
        Plen = 0;
    (void)pos;


    proj A;
    fp_copy(A.x, in[0]);
    fp_copy(A.z, fp_1);
    proj A24;
    xA24(&A24, &A);

    int8_t swap = 0;

    proj P[2];

    elligator_seeded(&P[1], &P[0], &A24, &in[1]);

    xmul_cofactor(&P[0], &P[0], &A24);
    xmul_cofactor(&P[1], &P[1], &A24);

    proj_copy(&ramifications[0], (const proj *)&P[0]); // point on E[\pi + 1]
    proj_copy(&ramifications[1], (const proj *)&P[1]); // point on E[\pi - 1]

    // #pragma unroll N
    for (int i = (int)N - 1; i >= 0; i--)
    {
        while (moves < i)
        {
            block += 1;
            proj_copy(&ramifications[0 + 2 * block], (const proj *)&ramifications[0 + 2 * (block - 1)]); // point on E[\pi + 1]
            proj_copy(&ramifications[1 + 2 * block], (const proj *)&ramifications[1 + 2 * (block - 1)]); // point on E[\pi - 1]

            // #pragma unroll
            for (inner = moves; inner < (moves + strategy[k]); inner++)
            {
                pos = N - inner - 1;
                xMUL_dac(&ramifications[0 + 2 * block], &A24, 0, &ramifications[0 + 2 * block], primes_dac[pos], primes_daclen[pos], primes_daclen[pos]);
                xMUL_dac(&ramifications[1 + 2 * block], &A24, 0, &ramifications[1 + 2 * block], primes_dac[pos], primes_daclen[pos], primes_daclen[pos]);
            }

            xmul_counter[block] = strategy[k]; // the k-th element is used for next iteration on moves
            moves += strategy[k];              // moves is incremented
            k += 1;
        }

        // conditional swap based on sign of exponent
        swap = ((priv->e[i] >> 7)) & 0x1;
        proj_cswap(&ramifications[0 + 2 * block], &ramifications[1 + 2 * block], swap);

        error |= fp_iszero(ramifications[0 + 2 * block].z);
        error |= fp_iszero(ramifications[1 + 2 * block].z);
        // assert(!fp_iszero(ramifications[0 + 2 * block].z));
        // assert(!fp_iszero(ramifications[1 + 2 * block].z));

        // #pragma unroll
        for (int j = 0; j < block; j++)
        {
            proj_cswap(&ramifications[0 + 2 * j], &ramifications[1 + 2 * j], swap);
            xMUL_dac(&ramifications[1 + 2 * j], &A24, 0, &ramifications[1 + 2 * j], primes_dac[N - i - 1], primes_daclen[N - i - 1], primes_daclen[N - i - 1]);
            proj_cswap(&ramifications[0 + 2 * j], &ramifications[1 + 2 * j], swap);
        }

        // how many points should be evaluated?
        Plen = 2 * (block);

        proj Anew = A;
        xISOG_matryoshka(&Anew, ramifications, Plen, &ramifications[0 + 2 * block], primes[N - i - 1], primes[N - i - 1], primes[N - i - 1]);

        proj_cmov(&A, &Anew, 1);
        xA24(&A24, &Anew);

        // Configuring for the next iteration
        moves -= xmul_counter[block];
        xmul_counter[block] = 0;
        block -= 1;
    }


    fp_inv(A.z);
    fp_mul2(&A.x, (const fp *)&A.z);
    // fp_copy(A.z, fp_1);
    fp_copy(out->A, A.x);
    return error;
}

void action(public_key *out, fp const *in, private_key const *priv)
{
    printf("\n\n##########################\nWITHOUT STRATEGY\n");
    init_counters();
    proj A;
    fp_copy(A.x, in[0]);
    fp_copy(A.z, fp_1);
    proj A24;
    xA24(&A24, &A);

    int8_t swap = 0, s_old = 0;

    proj P[2];

    elligator_seeded(&P[1], &P[0], &A24, &in[1]);

    xmul_cofactor(&P[0], &P[0], &A24);
    xmul_cofactor(&P[1], &P[1], &A24);

    // for (int i = 0; i < (int)primes_num; i++)
    for (int i = (int)N - 1; i >= 0; i--)
    {
        // conditional swap based on sign of exponent
        swap = ((priv->e[i] >> 7) ^ (s_old)) & 0x1;
        s_old = priv->e[i] >> 7;
        proj_cswap(&P[0], &P[1], swap);

        proj K[2] = {P[0], P[1]};

        // clear all other primes
        // for (int j = i + 1; j < (int)primes_num; j++)
        for (int j = i - 1; j >= 0; j--)
        {
            xMUL_dac(&K[0], &A24, 0, &K[0], primes_dac[j], primes_daclen[j], primes_daclen[j]);
        }

        assert(!fp_iszero(K[0].z));
        assert(!fp_iszero(K[1].z));

        xMUL_dac(&P[1], &A24, 0, &P[1], primes_dac[i], primes_daclen[i], primes_daclen[i]);

        // how many points should be evaluated?
        int64_t Plen;
        // if (i == primes_num - 1)
        if (i == 0)
            Plen = 0; // skip pushing points through last isogeny
        else
            Plen = 2;

        proj Anew = A;
        proj Pnew[2] = {P[0], P[1]};

        xISOG_matryoshka(&Anew, Pnew, Plen, &K[0], primes[i], primes[i], primes[i]);

        proj_cmov(&A, &Anew, 1);
        xA24(&A24, &A);

        if (Plen > 0)
        {
            proj_copy(&P[0], &Pnew[0]);
            proj_copy(&P[1], &Pnew[1]);
        }
    }

    fp_inv(A.z);
    fp_mul2(&A.x, (const fp *)&A.z);
    // fp_copy(A.z, fp_1);
    fp_copy(out->A, A.x);
}

/* includes public-key validation. */
bool csidh(public_key *out, public_key const *in, private_key const *priv)
{
    if (!validate(in))
    {
        fp_random(out->A);
        return false;
    }

    fp in_seed[2];
    fp_set(in_seed[1], (uint64_t)ELLIGATOR_SEED);
    fp_enc(in_seed[1], in_seed[1]);
    fp_copy(in_seed[0], in->A);

    // action(out, (const fp *)in_seed, priv);
    action_strategy(out, (const fp *)in_seed, priv);
    return true;
}
