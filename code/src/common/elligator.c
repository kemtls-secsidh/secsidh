// #include "crypto_declassify.h"
#include "elligator.h"

// #define fp_cswap fp_cswap_ctidh

void elligator(proj *plus,proj *minus,const proj *A)
{
  for (;;) {
    fp u;
    fp_random(u);
    // memset(u, 1, sizeof(u)); 

    // long long reject = fp_iszero(&u);
    long long reject = fp_iszero(u);    
    // crypto_declassify(&reject,sizeof reject);
    if (reject) continue; /* bad RNG outputs 0 */

    fp u2; fp_sq2(&u2,(const fp*) &u);
    fp D = {0}; fp_sub3(&D,(const fp*) &u2,&fp_1);

    // reject = fp_iszero(&D);
    
    reject = fp_iszero(D);    
    // crypto_declassify(&reject,sizeof reject);
    if (reject) continue; /* bad RNG outputs +-1 */

    fp M; fp_mul3(&M,&A->x,(const fp*) &u2); /* M = u^2 A->x */
    fp T; fp_mul3(&T,&A->x,(const fp*) &M); /* T = u^2 A->x^2 */

    // long long control = fp_iszero(&A->x);
    long long control = fp_iszero(A->x);
    fp P;
    fp_copy(P, A->x);
    fp_cmov_ctidh(&P,&fp_1,control); /* P = 1 if A->x = 0 else A->x */
    fp_cmov_ctidh(&M,&fp_1,control); /* M = 1 if A->x = 0 else u^2 A->x */
    fp_cmov_ctidh(&T,&fp_1,control); /* T = 1 if A->x = 0 */

    fp_mul2(&D,&A->z); /* D = (u^2-1) A->z */

    fp D2; fp_sq2(&D2,(const fp*) &D); /* D2 = (u^2-1)^2 A->z^2 */

    fp_add2(&T,(const fp*) &D2); /* T = 1 + (u^2-1)^2 A->z^2 if A->x = 0, else u^2 A->x^2 + (u^2-1)^2 A->z^2 */
    fp_mul2(&T,(const fp*) &D);
    fp_mul2(&T,(const fp*) &P);
    /* T = (u^2-1)A->z(1+(u^2-1)^2 A->z^2) if A->x = 0 */
    /* else (u^2-1) A->z A->x(u^2 A->x^2 + (u^2-1)^2 A->z^2) */

    /* plus point will be P/D = 1/(u^2-1)A->z if A->x = 0 else A/(u^2-1) */
    /* and minus point will be -M/D = -1/(u^2-1)A->z if A->x = 0 else -u^2 A/(u^2-1) */
    /* unless they're flipped, which is determined by T */

    /* T = Az^4 (1-u^2)^4 ((P/D)^3+A(P/D)^2+(P/D)) */
    /* so T squareness says whether P/D is on curve */

    /* also says whether -M/D is not on curve: */
    /* in all cases -M/D = -P/D-A */
    /* so (-M/D)^3+A(-M/D)^2+(-M/D) = (-P/D-A)^3+A(-P/D-A)^2+(-P/D-A) */
    /* = ((P/D)^3+A(P/D)^2+(P/D)) (-1-AD/P) */
    /* and by construction -1-AD/P is a non-square */
    /* since it's -1 if A=0, else -u^2 */

    fp_copy(plus->x, P);
    fp_neg2(&minus->x,(const fp*) &M);



//   x0 = plus->x;
//   y0 = minus->x;

    // test x0, y0;
    // x0[0] = 1;
    // y0[0] = 2;


    fp_cswap(plus->x,minus->x,1-fp_sqrt(&T));


    fp_copy(plus->z, D);
    fp_copy(minus->z, D);

    return;
  }
}

// Computes elligator for fixed seed u
void elligator_seeded(proj *Tp, proj *Tm, proj const *A, fp const *u)
{
	fp Ap, C_times_u_squared_minus_one, AC_times_u_squared_minus_one,
	   u_squared, u_squared_plus_one, u_squared_minus_one,
	   alpha, beta, tmp, aux;

	fp_add(Ap, A->x, A->x);
	fp_sub(Ap, Ap, A->z);
	fp_add(Ap, Ap, Ap);
	
	fp_sqr(u_squared, *u);

	fp_add(u_squared_plus_one, u_squared, fp_1);
	fp_sub(u_squared_minus_one, u_squared, fp_1);

	fp_mul(C_times_u_squared_minus_one, A->z, u_squared_minus_one);
	fp_mul(AC_times_u_squared_minus_one, Ap, C_times_u_squared_minus_one);

	fp_sqr(tmp, Ap);
	fp_mul(tmp, tmp, u_squared);
	fp_sqr(aux, C_times_u_squared_minus_one);
	fp_add(tmp, tmp, aux);
	fp_mul(tmp, AC_times_u_squared_minus_one, tmp);

	fp_set0(alpha);
	fp_copy(beta, *u);
    fp_cswap(alpha, beta, fp_iszero(tmp));
	fp_mul(u_squared_plus_one, alpha, u_squared_plus_one);
	fp_mul(alpha, alpha, C_times_u_squared_minus_one);

	fp_add(Tp->x, Ap, alpha);
	fp_mul(Tm->x, Ap, u_squared);
	fp_add(Tm->x, Tm->x, alpha);
	fp_sub(Tm->x, fp_0, Tm->x);

	fp_add(tmp, tmp, u_squared_plus_one);
	fp_cswap(Tp->x, Tm->x, 1 - fp_issquare(tmp));

	fp_copy(Tp->z, C_times_u_squared_minus_one);
	fp_copy(Tm->z, C_times_u_squared_minus_one);
}
