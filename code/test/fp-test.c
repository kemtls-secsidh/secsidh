#undef NDEBUG
#include <assert.h>
#include <time.h>
#include <gmp.h>

#if defined AVX2
#include "../common/fp/avx2/fp-avx2.h"
static __thread uint64_t tp[578];
#elif defined KARATSUBA
#include "../common/fp/karatsuba/fp-karatsuba.h"
#elif defined GMP
#include "../common/fp/gmp/fp-gmp.h"
#else
#include "../common/fp/mulx/fp.h"
#endif
#undef NDEBUG
#include <assert.h>
#include<time.h>

int main(void)
{
	int i;
	fp a, b, c, d;
    int loops = 1000;

	for (i = 0; i < loops; i++)
	{
		printf("[%3d%%] Testing field arithmetic", 100 * i / (int)loops);
		fflush(stdout);
		printf("\r\x1b[K");
                
		// Random elements of fp
		fp_random(a);
		fp_random(b);
		fp_copy(c, a);
		c[0] += 1;
		fp_copy(d, b);
		d[0] -= 1;

		assert(fp_isequal(a,b) == 0);	// different values check --> (a != b)
		assert(fp_isequal(c,c) == 1);	// equal values check --> 1 (c == c)
		assert(fp_issmaller(a,a) == 0);	// smaller than check --> 0 (a == a)
		assert(fp_issmaller(a,c) == 1);	// smaller than check --> 1 (a < c)
		assert(fp_issmaller(b,d) == 0);	// smaller than check --> 0 (b > d)

		fp_set(a, 1);	// Now a == 1
		fp_set0(b);	// Now b == 0

		assert(fp_iszero(a) == 0);
		assert(fp_iszero(b) == 1);

		// testing c - c
		fp_sub(d, c, c);
		assert(fp_iszero(d) == 1);

		// tetsing c * 0
		//fp_mul(d, c, b);
		assert(fp_iszero(d) == 1);

		// tetsing c * 1 ... recall, in Montgomery domain R mod p plays the role of the 1
		fp_set1(a);
		fp_mul(d, c, a);

		assert(fp_isequal(d, c) == 1);

		fp_random(a);
		fp_copy(b, a);
		fp_inv(a);
        fp_inv(b);
        assert( fp_isequal(a, b) );
        fp_inv(b);
		fp_mul(c, a, b);
		assert(fp_isone(c) == 1);

		fp_random(a);
		fp_sqr(b, a);
		assert( fp_issquare(b) );   

		fp_random(a);
		fp_random(b);        
        fp_cmov(&a, (fp const *) &b, 1);
        assert(fp_isequal(a, b) );

		fp_random(a);
        fp_copy(c, a);
		fp_random(b);
        fp_cmov(&a, (fp const *) &b, 0);
        assert(fp_isequal(a, c) );


	};

	printf("[%3d%%] Tested field arithmetic:\tNo errors!\n", loops * i / (int)loops);
	printf("-- All tests passed.\n");
	return 0;
}
