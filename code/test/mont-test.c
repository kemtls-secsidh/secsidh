#undef NDEBUG
#include<time.h>

#include "mont.h"

uint8_t test_elligator_output(proj const Tp, proj const Tm, fp const a)
{
	fp XTp, XTm;
	
	fp_copy(XTp, Tp[1]);
	fp_inv(XTp);
	fp_copy(XTm, Tm[1]);
	fp_inv(XTm);

	fp_mul(XTp, XTp, Tp[0]);
	fp_mul(XTm, XTm, Tm[0]);

	fp tmp, aux, YTp_squared, YTm_squared;

	fp_sqr(tmp, XTp);
	fp_mul(aux, tmp, XTp);
	fp_mul(tmp, tmp, a);	
	fp_add(YTp_squared, tmp, aux);
	fp_add(YTp_squared, YTp_squared, XTp);

	fp_sqr(tmp, XTm);
	fp_mul(aux, tmp, XTm);
	fp_mul(tmp, tmp, a);	
	fp_add(YTm_squared, tmp, aux);
	fp_add(YTm_squared, YTm_squared, XTm);

	return fp_issquare(YTp_squared) & ( 1 - fp_issquare(YTm_squared));
}

int main(void)
{
	// ------------

	int i, j;

	proj A;
	fp_set0(A[0]);
	fp_set1(A[1]);
	
	fp_add(A[0], A[1], A[0]);	// 1
	fp_add(A[0], A[0], A[0]);	// 2
	fp_add(A[0], A[1], A[0]);	// 3
	fp_add(A[0], A[0], A[0]);	// 6

	fp_add(A[1], A[1], A[1]);	// 2C
	fp_add(A[0], A[0], A[1]);	// A' + 2C
	fp_add(A[1], A[1], A[1]);	// 4C

	// Just to ensure the projective curve coeffientes are different from zero
	assert( !fp_iszero(A[0]) & !fp_iszero(A[0]) );

	fp a;
	coeff(a, (const fp*)A);
	assert(validate(a));
	
	proj Tp, Tm;
	for (j = 0; j < 32; j++)
	{
		printf("[%3d%%] Testing EC arithmetic", 100 * j / (int)32);
		fflush(stdout);
		printf("\r\x1b[K");
		
		// CSIDH case: Tp belongs to E[\pi + 1] and Tm belongs to E[\pi - 1], and both of them are torsion-(p + 1) points
		assert(validate(a));
		elligator(Tp, Tm, (const fp*)A);
		assert( test_elligator_output((const fp*)Tp, (const fp*)Tm, a) );

		xmul_cofactor(Tp, (const fp*)Tp, (const fp*)A);
		xmul_cofactor(Tm, (const fp*)Tm, (const fp*)A);

		#ifdef cofactor357 // Only for primes with cofactor 3*5*7
		xmul(Tp, 0, (const fp*)Tp, (const fp*)A);	// multiplying by 3
		xmul(Tp, 1, (const fp*)Tp, (const fp*)A);	// multiplying by 5
		xmul(Tp, 2, (const fp*)Tp, (const fp*)A);	// multiplying by 7
		xmul(Tm, 0, (const fp*)Tm, (const fp*)A);	// multiplying by 3
		xmul(Tm, 1, (const fp*)Tm, (const fp*)A);	// multiplying by 5
		xmul(Tm, 2, (const fp*)Tm, (const fp*)A);	// multiplying by 7
		#endif
		
		for (i = 0; i < N; i++)
		{
			xmul(Tp, i, (const fp*)Tp, (const fp*)A);
			xmul(Tm, i, (const fp*)Tm, (const fp*)A);
		};
		
		assert( isinfinity((const fp*)Tp) );	// [p + 1]Tp is the point at infinity
		assert( isinfinity((const fp*)Tm) );	// [p + 1]Tm is the point at infinity
	};

	printf("[%3d%%] Tested EC arithmetic:\tNo errors!\n", 100 * j / (int)32);
	printf("-- All tests passed.\n");
	return 0;
}
