#ifndef MONT_H
#define MONT_H

#include "../common/namespace.h"
#if defined AVX2
    #include "../common/fp/avx2/fp-avx2.h"
#elif defined GMP
    #include "../common/fp/gmp/fp-gmp.h"
#elif defined KARATSUBA
    #include "../common/fp/karatsuba/fp-karatsuba.h"
#else
    #include "../common/fp/mulx/fp.h"
#endif
#include "proj.h"


#define xA24 COMMON(xA24)
#define xDBL COMMON(xDBL)
#define xADD COMMON(xADD)
#define xDBLADD COMMON(xDBLADD)
#define xMUL_dac COMMON(xMUL_dac)
#define xMUL COMMON(xMUL)
#define xMUL_vartime COMMON(xMUL_vartime)
#define xISOG_matryoshka COMMON(xISOG_matryoshka)
#define xISOG COMMON(xISOG)
#define xISOG_old COMMON(xISOG_old)
// #define xISOG_CSIDH NS(xISOG_CSIDH)

#ifndef CTIDH
#define xmul_cofactor NS(xmul_cofactor)
void  xmul_cofactor(proj *Q, proj const *P, proj const *A);
#endif

void xA24(proj *A24,const proj *A);
void xDBL(proj *Q, proj const *P, const proj *A24, int Aaffine);
void xADD(proj *S, proj const *P, proj const *Q, proj const *PQ);
void xDBLADD(proj *R, proj *S, proj const *P, proj const *Q, proj const *PQ, proj const *A24, int Aaffine);
void xMUL_dac(proj *Q, proj const *A24, int Aaffine, proj const *P, long long dac, long long daclen, long long maxdaclen);
void xMUL(proj *Q, proj const *A, int Aaffine, proj const *P, uintbig const *k, long long kbits);
void xMUL_vartime(proj *Q, proj const *A, int Aaffine, proj const *P, uintbig const *k);

void xISOG_matryoshka(proj *A, proj *P, long long Plen, proj const *K, long long k, long long klower, long long kupper);
void xISOG(proj *A, proj *P, long long Plen, proj const *K, long long k);
void xISOG_old(proj *A, proj *P, proj const *K, long long k);
// void xISOG_CSIDH(proj *A, proj *P, long long Plen, proj const *K, long long k);

#endif
