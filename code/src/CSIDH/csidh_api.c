#include <assert.h>
#include <string.h>
#include <stdlib.h>
#include <stdio.h>
#include <immintrin.h>
#include "../common/fips202.h"

#define HASH_BYTES sizeof(fp)
#define HASH(data,len,out) shake256(out, HASH_BYTES, data, len);

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
#include "primes.h"
// #include "cpucycles.h"

const size_t NSAPI(pk_size) = sizeof(fp) + 16;
const size_t NSAPI(sk_size) = SKBYTES;
const size_t NSAPI(ss_size) = sizeof(fp) * 1;

#define secsidh_keygen NSAPI(keygen)
#define secsidh_derive NSAPI(derive)
// #define N primes_num

#include "csidh_api.h"
#include "csidh.h"

// void action(public_key *out, public_key const *in, private_key const *priv)

// Public (Montgomery curve affine coefficient) and private (integer vector) keys generation
void internal_keygen(fp *pk, int8_t *sk)
{

    fp_set0(pk[0]);
    fp_set0(pk[1]);
    
    // random private integer vector
    csidh_private((private_key *)sk);

    fp in[2];
    fp_set(in[1], (uint64_t)ELLIGATOR_SEED);
    fp_enc(in[1], in[1]);
    fp_copy(in[0], base.A);

    // action((public_key*)*pk,(const fp*) in,(private_key*)sk);
    (void) action_strategy((public_key *)*pk, (const fp *)in, (private_key *)sk);

    // GET FULL TORSION POINT
    fulltorsion_points(pk[1], pk[0]);
}

// Secret sharing derivation (Montgomery curve affine coefficient)
bool internal_derive(fp *ss, fp *const pk, int8_t *const sk)
{
    uint8_t buffer[sizeof(public_key) + sizeof(private_key)];

    if (!validate((public_key *)pk))
        return 0;   // validating the input Montgomery curve affine coefficiente (it must be supersingular!)

    fp_enc(pk[1], pk[1]);

    int8_t error = action_strategy((public_key *)ss, (const fp *)pk, (private_key *)sk); // Secrect sharing Montgomery curve affine coefficient: [sk] * pk

    if(error) goto fail;


    HASH((uint8_t*)ss, sizeof(fp), (uint8_t*)ss);

    return 1;

fail:

    memcpy(buffer, sk, sizeof(private_key));
    memcpy(buffer + sizeof(private_key), pk, sizeof(public_key));
    HASH(buffer, sizeof(public_key) + sizeof(private_key),(uint8_t*) ss);

    return 0;
}


void skgen(int8_t *sk) // secret key generation
{
    csidh_private((private_key *)sk);
}

void pkgen(fp *pk, int8_t *const sk) // public key generation
{
    fp in[2];
    fp_set(in[1], (uint64_t)ELLIGATOR_SEED);
    fp_enc(in[1], in[1]);
    fp_copy(in[0], base.A);
    action((public_key *)*pk, (const fp *)in, (private_key *)sk);
}



// ----------------------------------- helpers for the interface between static and public API

#define SECSIDH_SUCCESS 0
#define SECSIDH_FAILURE -1

/* Safely clear a buffer b of size s */
static inline void secsidh_clear(void *b, size_t s)
{
    /*
     * TODO: tricks might be needed to ensure the compiler does not
     *       strip this call away.
     *
     * Potentially this could be an externally provided function at some
     * point.
     */
    memset(b, 0, s);
}

/*
 * Converts the internal representation of a secret key into an octet
 * buffer.
 *
 * TODO: at some point this should take care of endianess issues.
 */
static inline void secsidh_sk2oct(uint8_t *buf, const int8_t sk[N])
{
    for(int i=0; i<SKBYTES; i++)
    {
        int8_t sum = 0;
        for(int j = 0; j <= 7; j++)
        {
            if((j+i*8)>N) break;
            sum += (!(((sk[j+i*8]) & (1<<(7)))>>7))<<j;
        }
        buf[i]=sum;
    }  
}

/*
 * Converts the internal representation of a public key into an octet
 * buffer.
 *
 * TODO: at some point this should take care of endianess issues.
 */
static inline void secsidh_pk2oct(uint8_t *buf, const fp pk[2])
{
    memcpy(buf, pk, sizeof(fp) + 16);
    // fp_2oct(buf, pk, 2);
}

/*
 * Converts the internal representation of a shared secret into an octet
 * buffer.
 *
 * TODO: at some point this should take care of endianess issues.
 */
static inline void secsidh_ss2oct(uint8_t *buf, const fp ss[1])
{
    memcpy(buf, ss, 1 * sizeof(fp));
    // fp_2oct(buf, ss, 1);
}

/*
 * Converts the octet buffer representation of a public key into our
 * internal representation.
 *
 * TODO: at some point this should take care of endianess issues.
 */
static inline void secsidh_oct2pk(fp pk[2], const uint8_t *buf)
{
    memcpy(pk, buf, sizeof(fp) + 16);
    // oct2_fp(pk, buf, 2);
}

/*
 * Converts the octet buffer representation of a secret key into our
 * internal representation.
 *
 * TODO: at some point this should take care of endianess issues.
 */
static inline void secsidh_oct2sk(int8_t sk[N], const uint8_t *buf)
{
    
    for(int i=0; i<SKBYTES; i++)
    {
        for(int j = 0; j <= 7; j++)
        {
            if ((j+i*8)>N) break;
            sk[j+i*8] = ((buf[i]>>j)&1);
            sk[j+i*8] += !(sk[j+i*8]) * -1;
        }
    }    
    
    // memcpy(sk, buf, N * sizeof(int8_t));
}

// ----------------------------------- Interface between static and public API

int secsidh_keygen(uint8_t *pk, uint8_t *sk)
{
    fp ipk[2];
    int8_t isk[primes_num];
    internal_keygen(ipk, isk);

    secsidh_pk2oct(pk, (const fp *)ipk);
    secsidh_sk2oct(sk, isk);
    secsidh_clear(isk, sizeof(isk));

    return SECSIDH_SUCCESS;
}

int secsidh_derive(uint8_t *ss, const uint8_t *peer_pk, const uint8_t *sk)
{
    int ret;
    fp ipeer_pk[2] = {0}, iss[1];
    int8_t isk[primes_num];

    secsidh_oct2pk(ipeer_pk, peer_pk);

    secsidh_oct2sk(isk, sk);

    ret = internal_derive(iss, ipeer_pk, isk) == 1 ? SECSIDH_SUCCESS : SECSIDH_FAILURE;

    secsidh_clear(isk, sizeof(isk));
    secsidh_ss2oct(ss, (const fp *)iss);
    secsidh_clear(iss, sizeof(iss));

    return ret;
}


