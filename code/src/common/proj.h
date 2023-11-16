#ifndef proj_h
#define proj_h

#include <string.h>

#if defined AVX2
    #include "../common/fp/avx2/fp-avx2.h"
#elif defined GMP
    #include "../common/fp/gmp/fp-gmp.h"
#elif defined KARATSUBA
    #include "../common/fp/karatsuba/fp-karatsuba.h"
#else
    #include "../common/fp/mulx/fp.h"
#endif

/* P^1 over fp. */
typedef struct proj
{
    fp x;
    fp z;
} proj;

static inline void proj_cswap(proj *P, proj *Q, long long c)
{
    fp_cswap(P->x, Q->x, c);
    fp_cswap(P->z, Q->z, c);
}

static inline void proj_cmov(proj *P, const proj *Q, long long c)
{
    fp_cmov(&P->x, &Q->x, c);
    fp_cmov(&P->z, &Q->z, c);
}

static inline void proj_copy(proj *P, const proj *Q)
{
    fp_copy(P->x, Q->x);
    fp_copy(P->z, Q->z);
}

static inline int proj_equal(proj *A, proj *B)
{
    fp AxBz;
    fp AzBx;
    fp_mul3(&AxBz, (const fp*) &A->x, (const fp*) &B->z);
    fp_mul3(&AzBx, (const fp*) &A->z, (const fp*) &B->x);
    return !memcmp(&AxBz, &AzBx, sizeof AzBx);
}

#endif
