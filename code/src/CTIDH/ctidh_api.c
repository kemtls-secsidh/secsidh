#include <assert.h>
#include <string.h>
#include <stdlib.h>
#include <stdio.h>
#include <immintrin.h>
#include "../common/fips202.h"

#define HASH_BYTES NUMBER_OF_WORDS*8
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
#include "../common/primes.h"
// #include "cpucycles.h"

const size_t NSAPI(pk_size) = sizeof(fp);
const size_t NSAPI(sk_size) = sizeof(int8_t) * primes_num;
const size_t NSAPI(ss_size) = sizeof(fp) * 1;

#define secsidh_keygen NSAPI(keygen)
#define secsidh_derive NSAPI(derive)
// #define N primes_num 

#include "ctidh_api.h"
#include "ctidh.h"

// void action(public_key *out, public_key const *in, private_key const *priv)

// Public (Montgomery curve affine coefficient) and private (integer vector) keys generation
void internal_keygen(fp* pk, int8_t* sk)
{
	ctidh_private((private_key*) sk);			// random private integer vector


    // for(int i=0; i < primes_num; i++)
    // {
    //     printf("%d,", sk[i]);
    // }

	// csidh_private((private_key*) sk);    
    // memset(sk, 0, sizeof(private_key));
    // sk[0] = 1;
	// csidh(pk, sk);		// Public Montgomery curve affine coefficient: [sk] * E_0
    // action((public_key*)*pk,&base,(private_key*)sk);    
    action((public_key*)*pk,&base,(private_key*)sk);    
}

// Secret sharing derivation (Montgomery curve affine coefficient)
bool internal_derive(fp* ss, fp* const pk, int8_t* const sk)
{
	if (!validate((public_key*)pk)) return 0;	// validating the input Montgomery curve affine coefficiente (it must be supersingular!)
	//printf("Public key validation (running-time): %luM + %luS + %lua\n", fpmul, fpsqr, fpadd);
	action((public_key*)ss, (public_key*)*pk, (private_key*)sk);	// Secrect sharing Montgomery curve affine coefficient: [sk] * pk
	
    HASH((uint8_t*)ss, sizeof(public_key), (uint8_t*) ss);    
    
    return 1;
}

void skgen(int8_t* sk)                      // secret key generation
{
    ctidh_private((private_key*) sk);
}				

void pkgen(fp* pk, int8_t* const sk)        // public key generation
{
     action((public_key*)*pk,&base,(private_key*)sk);
}			

// ----------------------------------- helpers for the interface between static and public API

#define SECSIDH_SUCCESS 0
#define SECSIDH_FAILURE -1


/* Safely clear a buffer b of size s */
static inline
void secsidh_clear(void *b, size_t s)
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
static inline
void secsidh_sk2oct(uint8_t *buf, const int8_t sk[primes_num])
{
    memcpy(buf, sk, primes_num*sizeof(int8_t));
}

/*
 * Converts the internal representation of a public key into an octet
 * buffer.
 *
 * TODO: at some point this should take care of endianess issues.
 */
static inline
void secsidh_pk2oct(uint8_t *buf, const fp *pk)
{
    fp_2oct(buf, pk);
}

/*
 * Converts the internal representation of a shared secret into an octet
 * buffer.
 *
 * TODO: at some point this should take care of endianess issues.
 */
static inline
void secsidh_ss2oct(uint8_t *buf, const fp ss[1])
{
    fp_2oct(buf, ss);
}

/*
 * Converts the octet buffer representation of a public key into our
 * internal representation.
 *
 * TODO: at some point this should take care of endianess issues.
 */
static inline
void secsidh_oct2pk(fp *pk, const uint8_t *buf)
{
    oct2_fp(pk, buf);
}

/*
 * Converts the octet buffer representation of a secret key into our
 * internal representation.
 *
 * TODO: at some point this should take care of endianess issues.
 */
static inline
void secsidh_oct2sk(int8_t sk[primes_num], const uint8_t *buf)
{


    memcpy(sk, buf, primes_num*sizeof(int8_t));
}

// ----------------------------------- Interface between static and public API

int secsidh_keygen(uint8_t *pk, uint8_t *sk)
{
    fp ipk = {0};
    int8_t isk[primes_num];
    internal_keygen(&ipk, isk);


    secsidh_pk2oct(pk, (const fp*)ipk);

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
    memset(ipeer_pk[1], 0, sizeof(fp));

    secsidh_oct2sk(isk, sk);

    ret = internal_derive(iss, ipeer_pk, isk) == 1 ? SECSIDH_SUCCESS : SECSIDH_FAILURE;


    secsidh_clear(isk, sizeof(isk));
    secsidh_ss2oct(ss, (const fp*)iss);
    secsidh_clear(iss, sizeof(iss));

    return ret;
}
