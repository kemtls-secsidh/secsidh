#include "../../common/mont.h"
// Next function implements PRAC algorithm
void xmul_cofactor(proj *Q, proj const *P, proj const *A)
{
	proj x, infty;

	// Point at infinity
	fp_set1(infty.x);
	fp_set0(infty.z);

	// Reducing the problem from k = 2^i x s to s
	proj_copy(&x, P);
	xDBL(&x, &x, A, 1);
	xDBL(&x, &x, A, 1);
	xDBL(&x, &x, A, 1);
	xDBL(&x, &x, A, 1);
	xDBL(&x, &x, A, 1);
	xDBL(&x, &x, A, 1);
	xDBL(&x, &x, A, 1);
	xDBL(&x, &x, A, 1);
	xDBL(&x, &x, A, 1);
	xDBL(&x, &x, A, 1);
	xDBL(&x, &x, A, 1);
	xDBL(&x, &x, A, 1);
	xDBL(&x, &x, A, 1);
	xDBL(&x, &x, A, 1);
	xDBL(&x, &x, A, 1);
	xDBL(&x, &x, A, 1);
	xDBL(&x, &x, A, 1);
	xDBL(&x, &x, A, 1);
	xDBL(&x, &x, A, 1);
	xDBL(&x, &x, A, 1);
	xDBL(&x, &x, A, 1);
	xDBL(&x, &x, A, 1);
	xDBL(&x, &x, A, 1);
	xDBL(&x, &x, A, 1);
	xDBL(&x, &x, A, 1);
	xDBL(&x, &x, A, 1);
	xDBL(&x, &x, A, 1);
	xDBL(&x, &x, A, 1);
	xDBL(&x, &x, A, 1);
	xDBL(&x, &x, A, 1);
	xDBL(&x, &x, A, 1);
	xDBL(&x, &x, A, 1);
	xDBL(&x, &x, A, 1);
	xDBL(&x, &x, A, 1);
	xDBL(&x, &x, A, 1);
	xDBL(&x, &x, A, 1);
	xDBL(&x, &x, A, 1);
	xDBL(&x, &x, A, 1);
	xDBL(&x, &x, A, 1);
	xDBL(&x, &x, A, 1);
	xDBL(&x, &x, A, 1);
	xDBL(&x, &x, A, 1);
	xDBL(&x, &x, A, 1);
	xDBL(&x, &x, A, 1);
	xDBL(&x, &x, A, 1);
	xDBL(&x, &x, A, 1);
	xDBL(&x, &x, A, 1);
	xDBL(&x, &x, A, 1);
	xDBL(&x, &x, A, 1);
	xDBL(&x, &x, A, 1);
	xDBL(&x, &x, A, 1);
	xDBL(&x, &x, A, 1);
	xDBL(&x, &x, A, 1);
	xDBL(&x, &x, A, 1);
	xDBL(&x, &x, A, 1);
	xDBL(&x, &x, A, 1);
	xDBL(&x, &x, A, 1);
	xDBL(&x, &x, A, 1);
	xDBL(&x, &x, A, 1);
	xDBL(&x, &x, A, 1);
	xDBL(&x, &x, A, 1);
	xDBL(&x, &x, A, 1);
	xDBL(&x, &x, A, 1);
	xDBL(&x, &x, A, 1);

	// Performing the 2-dimensional scalar pseudomultiplication x([r]P + [s - r]P) with r = s / {Golden Ratio}
	proj x0, x1, diff;
	proj_copy(&x0, &x);
	proj_copy(&x1, &x);
	proj_copy(&diff, &infty);
	proj_cswap(&x0, &x1, 1);
	xADD(&diff, &x1, &diff, &x0); xDBL(&x1, &x1, A, 1);
	proj_copy(&x, &x0); xADD(&x0, &x1, &x0, &diff); proj_copy(&diff, &x); //Fibonacci step
	proj_copy(&x, &x0); xADD(&x0, &x1, &x0, &diff); proj_copy(&diff, &x); //Fibonacci step
	proj_cswap(&x0, &x1, 1);
	proj_copy(&x, &x0); xADD(&x0, &x1, &x0, &diff); proj_copy(&diff, &x); //Fibonacci step
	proj_cswap(&x0, &x1, 1);
	xADD(&diff, &x1, &diff, &x0); xDBL(&x1, &x1, A, 1);
	xADD(&x0, &x1, &x0, &diff); xDBL(&x1, &x1, A, 1);
	proj_copy(&x, &x0); xADD(&x0, &x1, &x0, &diff); proj_copy(&diff, &x); //Fibonacci step
	proj_copy(&x, &x0); xADD(&x0, &x1, &x0, &diff); proj_copy(&diff, &x); //Fibonacci step
	proj_cswap(&x0, &x1, 1);
	xADD(&diff, &x0, &diff, &x1); xDBL(&x0, &x0, A, 1);
	xADD(&x0, &x1, &x0, &diff); xDBL(&x1, &x1, A, 1);
	xADD(&x0, &x1, &x0, &diff); xDBL(&x1, &x1, A, 1);
	proj_copy(&x, &x0); xADD(&x0, &x1, &x0, &diff); proj_copy(&diff, &x); //Fibonacci step
	proj_copy(&x, &x0); xADD(&x0, &x1, &x0, &diff); proj_copy(&diff, &x); //Fibonacci step
	proj_cswap(&x0, &x1, 1);
	proj_copy(&x, &x0); xADD(&x0, &x1, &x0, &diff); proj_copy(&diff, &x); //Fibonacci step
	proj_copy(&x, &x0); xADD(&x0, &x1, &x0, &diff); proj_copy(&diff, &x); //Fibonacci step
	proj_cswap(&x0, &x1, 1);
	proj_copy(&x, &x0); xADD(&x0, &x1, &x0, &diff); proj_copy(&diff, &x); //Fibonacci step
	proj_copy(&x, &x0); xADD(&x0, &x1, &x0, &diff); proj_copy(&diff, &x); //Fibonacci step
	proj_cswap(&x0, &x1, 1);
	xADD(&diff, &x0, &diff, &x1); xDBL(&x0, &x0, A, 1);

	// Ladder step on the missing part: x0 will correspond with Ladder(&x1)
	proj_copy(&diff, &x1);
	xDBL(&x0, &x1, A, 1);
	proj_cswap(&x0, &x1, 0); xADD(&x1, &x0, &x1, &diff); xDBL(&x0, &x0, A, 1);
	proj_cswap(&x0, &x1, 1);

	// Finally, the output point must be stored in Q
	proj_copy(Q, &x0);
}
