#include "mont.h"
#include "elligator.h"
#include "csidh.h"

static void multiples(proj Q[], proj const P, proj const A)
{
	int j;
	proj_copy(&Q[0], &P);
	for (j = 0; j < (int)N; j++)
		// xmul(Q[0], j, (const fp*)Q[0], (const fp*)A);
        xMUL_dac(&Q[0], &A, 1, &Q[0], primes_dac[j], primes_daclen[j], primes_daclen[j]);

	//  --- multiplying by 3
	// xmul(Q[1], 0, (const fp*)Q[0], (const fp*)A);
    xMUL_dac(&Q[1], &A, 1, &Q[0], 0, 0, 0);
	// xmul(Q[1], 0, (const fp*)Q[1], (const fp*)A);
    xMUL_dac(&Q[1], &A, 1, &Q[1], 0, 0, 0);
	//  --- multiplying by 5
	// xmul(Q[0], 1, (const fp*)Q[0], (const fp*)A);
    xMUL_dac(&Q[0], &A, 1, &Q[0], 0, 1, 1);
	// xmul(Q[0], 1, (const fp*)Q[0], (const fp*)A);
    xMUL_dac(&Q[0], &A, 1, &Q[0], 0, 1, 1);
	// xmul(Q[2], 1, (const fp*)Q[1], (const fp*)A);
    xMUL_dac(&Q[2], &A, 1, &Q[1], 0, 1, 1);
	// xmul(Q[2], 1, (const fp*)Q[2], (const fp*)A);
    xMUL_dac(&Q[2], &A, 1, &Q[2], 0, 1, 1);
	//  --- multiplying by 7
	// xmul(Q[0], 2, (const fp*)Q[0], (const fp*)A);
    xMUL_dac(&Q[0], &A, 1, &Q[0], 2, 2, 2);
	// xmul(Q[0], 2, (const fp*)Q[0], (const fp*)A);
    xMUL_dac(&Q[0], &A, 1, &Q[0], 2, 2, 2);
	// xmul(Q[1], 2, (const fp*)Q[1], (const fp*)A);
    xMUL_dac(&Q[1], &A, 1, &Q[1], 2, 2, 2);
	// xmul(Q[1], 2, (const fp*)Q[1], (const fp*)A);
    xMUL_dac(&Q[1], &A, 1, &Q[1], 2, 2, 2);
}

// Obtaining points of full order
void fulltorsion_points(fp u, fp const a)
{
	proj Tp, Tm, Pp[N], Aux_Tp[3], Pm[N], Aux_Tm[3], A;
	int j;
	
	// Convert curve to projective Montgomery form (A' + 2C : 4C)
	fp_copy(A.x, a);
	fp_set1(A.z);
	fp_add(A.z, A.z, A.z);       // 2C
	fp_add(A.x, A.x, A.z);       // A' + 2C
	fp_add(A.z, A.z, A.z);       // 4C
	
	fp_set0(u); // u <- 0
	uint8_t boolp = 0, boolm = 0;
	do
	{
		fp_add(u, u, fp_1);	// u <- u + 1 ... Recall, 1 must be in Montgomery domain
		elligator_seeded(&Tp, &Tm, &A, (const fp*)u);
		// ---
		xmul_cofactor(&Tp, &Tp, &A);
		multiples(Aux_Tp, Tp, A);
		if (fp_iszero(Aux_Tp[0].z) | fp_iszero(Aux_Tp[1].z) | fp_iszero(Aux_Tp[2].z))
			continue;
		// ---
		// ---> This can be removed for wd1 style 
		xmul_cofactor(&Tm, &Tm, &A);
		multiples(Aux_Tm, Tm, A);
		if (fp_iszero(Aux_Tm[0].z) | fp_iszero(Aux_Tm[1].z) | fp_iszero(Aux_Tm[2].z))
			continue;
		// <---

		// Checking if Tp is an order (p+1)/(2^e)
		proj_copy(&Pp[0], &Tp);
		// xmul(Pp.x, 0, (const fp*)Pp.x, (const fp*)A);	// multiplying by 3
        // xMUL_dac(&Pp[0], &A, 1, &Pp[0], primes_dac[0], primes_daclen[0], primes_daclen[0]);
		// // xmul(Pp.x, 1, (const fp*)Pp.x, (const fp*)A);	// multiplying by 5
        // xMUL_dac(&Pp[0], &A, 1, &Pp[0], primes_dac[1], primes_daclen[1], primes_daclen[1]);
		// // xmul(Pp.x, 2, (const fp*)Pp.x, (const fp*)A);	// multiplying by 7
        // xMUL_dac(&Pp[0], &A, 1, &Pp[0], primes_dac[2], primes_daclen[2], primes_daclen[2]);
		cofactor_multiples(Pp, A, 0, N);
		boolp = 1;
		boolp &= (1 - fp_iszero(Pp[0].z)) | (1 - fp_iszero(Aux_Tp[0].z));
		boolp &= (1 - fp_iszero(Pp[1].z)) | (1 - fp_iszero(Aux_Tp[1].z));
		boolp &= (1 - fp_iszero(Pp[2].z)) | (1 - fp_iszero(Aux_Tp[2].z));
		for (j = 3; j < (int)N; j++)
			boolp &= (1 - fp_iszero(Pp[j].z));

		if (1 - boolp)
			continue;

		// ---> This can be removed for wd1 style 
		// Checking if Tm is an order (p+1)/(2^e)
		proj_copy(&Pm[0], &Tm);
		// xmul(Pm.x, 0, (const fp*)Pm.x, (const fp*)A);	// multiplying by 3
        // xMUL_dac(&Pm[0], &A, 1, &Pm[0], primes_dac[0], primes_daclen[0], primes_daclen[0]);
		// // xmul(Pm.x, 1, (const fp*)Pm.x, (const fp*)A);	// multiplying by 5
        // xMUL_dac(&Pm[0], &A, 1, &Pm[0], primes_dac[1], primes_daclen[1], primes_daclen[1]);
		// // xmul(Pm.x, 2, (const fp*)Pm.x, (const fp*)A);	// multiplying by 7
        // xMUL_dac(&Pm[0], &A, 1, &Pm[0], primes_dac[2], primes_daclen[2], primes_daclen[2]);
		cofactor_multiples(Pm, A, 0, N);
		
		boolm = 1;
		boolm &= (1 - fp_iszero(Pm[0].z)) | (1 - fp_iszero(Aux_Tm[0].z));
		boolm &= (1 - fp_iszero(Pm[1].z)) | (1 - fp_iszero(Aux_Tm[1].z));
		boolm &= (1 - fp_iszero(Pm[2].z)) | (1 - fp_iszero(Aux_Tm[2].z));
		for (j = 3; j < (int)N; j++)
			boolm &= (1 - fp_iszero(Pm[j].z));

		if (1 - boolm)
			continue;
		// <---
	} while ( (1 - boolp) | (1 - boolm) );
}

int main(void)
{
	fp u;
	fulltorsion_points(u, fp_0);
	fp_dec(u, (uint64_t* const)u);
	int i;
	for(i = 1; i < NUMBER_OF_WORDS; i++)
		assert(u[i] == 0);

	printf("#ifndef _ELLIGATOR_SEED_H_\n");
	printf("#define _ELLIGATOR_SEED_H_\n");
	printf("#define U %d\n", (int)u[0]);
	printf("#endif /* Elligator's seed */\n");
	return 0;
}
