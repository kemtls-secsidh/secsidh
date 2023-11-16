#ifndef CTIDH_H
#define CTIDH_H

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
#include "../common/mont.h"
#include "../common/primes.h"


#define csidh_stattried NS(csidh_stattried)
extern long long csidh_stattried[primes_batches];
#define csidh_statsucceeded NS(csidh_statsucceeded)
extern long long csidh_statsucceeded[primes_batches];

typedef struct private_key {
    int8_t e[primes_num];
} private_key;

typedef struct public_key {
    fp A; /* Montgomery coefficient: represents y^2 = x^3 + Ax^2 + x */
} public_key;

#define base  NS(base)
extern const public_key base;

#define ctidh_private NS(ctidh_private)
// #define csidh_private NS(csidh_private)


#define csidh NS(csidh)
#define validate_cutofforder_v2 NS(validate_cutofforder_v2)
#define validate NS(validate)
#define action NS(action)
#define cofactor_multiples NS(cofactor_multiples)
#define validate2 NS(validate2)

void ctidh_private(private_key *priv);
// void csidh_private(private_key *priv);

bool csidh(public_key *out, public_key const *in, private_key const *priv);

// int validate_cutofforder_v2(fp *order,const fp *P,const fp *A);
bool validate(public_key const *in);

void action(public_key *out, public_key const *in, private_key const *priv);
void cofactor_multiples(proj P[], proj const A, size_t lower, size_t upper);


// int validate_cutofforder_v2(uintbig *order,const fp *P,const fp *A);
// bool validate2(public_key const *in);

#endif
