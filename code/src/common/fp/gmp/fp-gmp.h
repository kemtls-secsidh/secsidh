#ifndef _FP_GMP_H_
#define _FP_GMP_H_

#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <immintrin.h>

#include <assert.h>
#include <inttypes.h>
#include <stddef.h>

#include "../../rng.h"	// Random Number Generator
// #include "framework.h"
#include "../../namespace.h"
#include "../fp-counters.h"
#include "../../primes.h"

// (64 x NUMBER_OF_WORDS)-bits integer number in Montgomery domain
// #define NUMBER_OF_WORDS 64
typedef uint64_t fp[NUMBER_OF_WORDS];

// -------------------------------------
// big unsigned add and  sub implementation
#define uintbig_1 COMMON(uintbig_1)
extern const fp uintbig_1;

#define r_squared_mod_p COMMON(r_squared_mod_p)
extern const fp r_squared_mod_p;
#define p_minus_2 COMMON(p_minus_2)
extern const fp p_minus_2;
#define inv_min_p_mod_r COMMON(inv_min_p_mod_r)
extern const fp inv_min_p_mod_r;

#define uintbig_bit COMMON(uintbig_bit)
// bool uintbig_bit(fp const x, uint64_t k);
#define uintbig_add COMMON(uintbig_add)
bool uintbig_add(fp x, fp const y, fp const z); /* returns carry */
#define uintbig_sub COMMON(uintbig_sub)
bool uintbig_sub(fp x, fp const y, fp const z); /* returns borrow */

// -------------------------------------
#define p  COMMON(p)
extern const fp p;			// field characteristic
// extern const fp inv_min_p_mod_r;
// extern const fp r_squared_mod_p;
#define fp_1  COMMON(fp_1)
extern const fp fp_1;
#define fp_0  COMMON(fp_0)
extern const fp fp_0;



#define fp_enc  COMMON(fp_enc)
void  fp_enc(fp a, fp const b);			// from fp into Montgomery domain

#define fp_dec COMMON(fp_dec)
void  fp_dec(fp a, fp const b);			// from Montgomery domain into fp

#define fp_pow COMMON(fp_pow)
void  fp_pow(fp b, const fp e, const fp a);

#define fp_add COMMON(fp_add)
void  fp_add(fp c, const fp a, const fp b);	// a + a

#define fp_sub COMMON(fp_sub)
void  fp_sub(fp c, const fp a, const fp b);

#define fp_mul COMMON(fp_mul)
void  fp_mul(fp c, const fp a, const fp b);

#define fp_sqr COMMON(fp_sqr)
void  fp_sqr(fp b, const fp a);

#define fp_issquare COMMON(fp_issquare)
bool fp_issquare(fp const a);

#define fp_copy COMMON(fp_copy)
void  fp_copy(fp b, const fp a);

#define fp_cswap COMMON(fp_cswap)
void  fp_cswap(fp x, fp y, uint8_t c);

#define fp_random COMMON(fp_random)
void  fp_random(fp a);

#define fp_inv COMMON(fp_inv)
void  fp_inv(fp a);
#ifdef MONTGOMERY
#define fp_mont_redc COMMON(fp_mont_redc)
void  fp_mont_redc(fp a, const uint64_t b[2 * NUMBER_OF_WORDS]);
#endif

#ifdef KARATSUBA
    #if defined(P9215k384)
    #define fp_mult_144x144 COMMON(fp_mult_144x144)
    void  fp_mult_144x144(uint64_t *c, const uint64_t *a, const uint64_t *b);
    #endif

    #if defined(P8191k332) 
    #define fp_mult_128x128 COMMON(fp_mult_128x128)
    void  fp_mult_128x128(uint64_t *c, const uint64_t *a, const uint64_t *b);
    #endif

    #if defined(P6143k256)
    #define fp_mult_96x96 COMMON(fp_mult_96x96)
    void  fp_mult_96x96(uint64_t *c, const uint64_t *a, const uint64_t *b);
    #endif    

    #if defined(P5119k234)
    #define fp_mult_80x80 COMMON(fp_mult_80x80)
    void  fp_mult_80x80(uint64_t *c, const uint64_t *a, const uint64_t *b);
    #endif

    # if defined(P4095k256)   
    #define fp_mult_64x64 COMMON(fp_mult_64x64)
    void  fp_mult_64x64(uint64_t *c, const uint64_t *a, const uint64_t *b);
    #endif

    #if defined(P2047k221)
    #define fp_mult_32x32 COMMON(fp_mult_32x32)
    void  fp_mult_32x32(uint64_t *c, const uint64_t *a, const uint64_t *b);
    #endif     


#endif
// repeated squaring
static inline void fp_sq1_rep(fp x,long long n)
{
  while (n > 0) {
    --n;
    fp_sqr(x, x);
  }
}

static inline void fp_2oct(uint8_t *buf, const fp *a)
{
    for (int i = 0; i < NUMBER_OF_WORDS; i++)
    {
        for (int j = 0; j < 8; j++)
        {
            buf[i * 8 + j] = a[0][i] >> j * 8;
        }
    }
}

static inline void oct2_fp(fp *a, const uint8_t *buf)
{
    // fp test = {0};
    // memcpy(test, buf, sizeof(fp));

    uint64_t tmp = {0};
    for (int i = 0; i < NUMBER_OF_WORDS; i++)
    {
        for (int j = 0; j < 8; j++)
        {
            tmp = buf[i * 8 + j];
            a[0][i] += tmp << j * 8;
        }
    }

    // assert(memcmp(test, a, sizeof(test))==0);
}

// set to zero 
static inline void fp_set0(fp a)
{
	fp_copy(a, fp_0);
}

// set to one 
static inline void uintbig_set1(fp a)
{
	fp_copy(a, uintbig_1);
}

// set to one in mongotmery domnain
static inline void fp_set1(fp a)
{
	fp_copy(a, fp_1);
}

// set to value
static inline void fp_set(fp a, uint64_t value)
{
    fp_set0(a);
    a[0] = value;
}

// constant-time check of a < b
static inline uint64_t fp_issmaller(fp const a, fp const b)
{
	int i;
	int64_t r = 0, ab, c;

	for (i = 0; i < NUMBER_OF_WORDS; i++)
	{

		ab = a[i] ^ b[i];
		c = a[i] - b[i];
		c ^= ab & (c ^ a[i]);
		c = (c >> 63);
		r |= c;
	};

	return 1 - (uint64_t)(r + 1);
}

// constant-time check of a == b
static inline uint64_t fp_isequal(fp const a, fp const b)
{
	int i;
	uint64_t r = 0, t;

	for (i = 0; i < NUMBER_OF_WORDS; i++)
	{
		t = 0;
		unsigned char *ta = (unsigned char *)&a[i];
		unsigned char *tb = (unsigned char *)&b[i];
		t = (ta[0] ^ tb[0]) | (ta[1] ^ tb[1]) | (ta[2] ^ tb[2]) |  (ta[3] ^ tb[3]) | (ta[4] ^ tb[4]) | (ta[5] ^ tb[5]) | (ta[6] ^ tb[6]) |  (ta[7] ^ tb[7]);

		t = (-t);
		t = t >> 63;
		r |= t;
	};

	return (uint64_t)(1 - r);
}

// constant-time check of a == 0
static inline int fp_iszero(fp const a)
{
	int i;
	uint64_t c = 0;
	for (i=NUMBER_OF_WORDS-1; i >= 0; i--) 
		c |= a[i];
	return (c == 0);
}

// constant-time check of a == R mod p (one in Montogmery domain)
static inline uint64_t fp_isone(fp const a)
{
	return fp_isequal(a, fp_1);
}

#if defined P2047m1l226
#define UBITS 2048
#elif defined P4095m27l262
#define UBITS 4096
#elif defined P5119m46l244
#define UBITS 5120
#elif defined P6143m59l262
#define UBITS 6144
#elif defined P8191m78l338
#define UBITS 8192
#elif defined P9215m85l389
#define UBITS 9216
#endif
    
#define UINTBIG_LIMBS ((UBITS+63)/64)


    typedef struct uintbig {
        uint64_t c[UINTBIG_LIMBS];
    } uintbig;    

    long long uintbig_bit(uintbig const *x, uint64_t k);    

    #define uintbig_p COMMON(uintbig_p)
    extern const uintbig uintbig_p;

    // #define uintbig_1 COMMON(uintbig_1)
    // extern const uintbig uintbig_1;

    #define uintbig_four_sqrt_p COMMON(uintbig_four_sqrt_p)
    extern const fp uintbig_four_sqrt_p;

    #define uintbig_set COMMON(uintbig_set)
    void uintbig_set(uintbig *x, uint64_t y);


    #define uintbig_mul3_64 COMMON(uintbig_mul3_64)
    void uintbig_mul3_64(fp *x, fp const *y, uint64_t z);    

    static inline long long uintbig_uint64_iszero(uint64_t t)
    {
    // is t nonzero?
    t |= t>>32;
    // are bottom 32 bits of t nonzero?
    t &= 0xffffffff;
    // is t nonzero? between 0 and 0xffffffff
    t = -t;
    // is t nonzero? 0, or between 2^64-0xffffffff and 2^64-1
    t >>= 63;
    return 1-(long long) t;
    }

    static inline long long uintbig_iszero(const uintbig *x)
    {
    uint64_t t = 0;
    for (long long i = 0;i < UINTBIG_LIMBS;++i)
        t |= x->c[i];
    return uintbig_uint64_iszero(t);
    }

    static inline long long uintbig_isequal(const uintbig *x,const uintbig *y)
    {
    uint64_t t = 0;
    for (long long i = 0;i < UINTBIG_LIMBS;++i)
        t |= (x->c[i])^(y->c[i]);
    return uintbig_uint64_iszero(t);
    }    

    #define fp_2 COMMON(fp_2)
    extern const fp fp_2;			// 2 in the Montgomery domain

    #define uintbig_1_ctidh COMMON(uintbig_1_ctidh)
    extern const uintbig uintbig_1_ctidh;

    #define fp_cmov COMMON(fp_cmov)
    void  fp_cmov(fp *a,const fp *b, uint8_t c);

    // static inline long long fp_iszero_ctidh(fp *x) {
    // return fp_iszero(*x);
    // }

    static inline void fp_mul3(fp *c, fp const *a, fp const *b) {
        fp_mul(*c, *a, *b);
    }

    static inline void fp_mul2(fp *c, fp const *a) {
        fp_mul(*c, *c, *a);
    }

    static inline void fp_add3(fp *c, fp const *a, fp const *b) {
        fp_add(*c, *a, *b);
    }

    static inline void fp_add2(fp *c, fp const *a) {
        fp_add(*c, *c, *a);
    }

    static inline void fp_sub2(fp *c, fp const *a) {
        fp_sub(*c, *c, *a);
    }

    // static inline void fp_sub3_test(fp *c, fp *a, fp const *b) {
    //     fp_sub(*c, *a, *b);
    // }

    static inline void  fp_cmov_ctidh(fp *a, const fp *b, uint8_t c) {
        fp_cmov(a, b, c);
    }

    static inline void fp_sub3(fp *c, fp const *a, fp const *b) {
        fp_sub(*c, *a, *b);
    }

    static inline void fp_neg1(fp *x)
    {
        fp_sub(*x,fp_0,*x);
    }

    static inline void fp_neg2(fp *x,fp const *y)
    {
    fp_sub(*x,fp_0,*y);
    }

    static inline void fp_sq1(fp *x)
    {
    fp_sqr(*x,*x);
    }

    static inline void fp_sq2(fp *x,fp const *y)
    {
    fp_sqr(*x,*y);
    }

    static inline void fp_double1(fp *x)
    {
    fp_add2(x, (const fp*) x);
    }

    static inline void fp_double2(fp *x,fp const *y)
    {
    fp_add(*x,*y,*y);
    }

    static inline void fp_quadruple1(fp *x)
    {
    fp_double1(x);
    fp_double1(x);
    }

    static inline void fp_quadruple2(fp *x,fp const *y)
    {
    fp_double2(x,y);
    fp_double1(x);
    }

    static inline long long fp_sqrt(fp *x) {
        return fp_issquare(*x);
    }


// #endif


#endif
