#include "csidh.h"
#include "elligator-seed.h"

#include <secsidh/secsidh.h>
#include "fp-counters.h"
#include <inttypes.h>
#include <assert.h>
#include <stdio.h>
#include <string.h>

#if GLOBAL_COUNTERS != 0
#define cprintf(...) printf(__VA_ARGS__)
#else
#define cprintf(...)
#endif

#ifndef BITS
#define BITS 2047n221
#error BITS not defined
#endif

#define CPASTER(x, y) SECSIDH_CSIDH##x##_##y
#define CEVALUATOR(x, y)  CPASTER(x, y)
#define CONSTNAMESPACE(name)  CEVALUATOR(BITS, name)
#define SK_SIZE  	CONSTNAMESPACE(SK_SIZE)
#define PK_SIZE     CONSTNAMESPACE(PK_SIZE)
#define SS_SIZE     CONSTNAMESPACE(SS_SIZE)

#define FPASTER(x, y) secsidh_CSIDH##x##_##y
#define FEVALUATOR(x, y)  FPASTER(x, y)
#define FNAMESPACE(name)  FEVALUATOR(BITS, name)

#define keygen FNAMESPACE(keygen)
#define derive FNAMESPACE(derive)


int main(void)
{
	int i, j;
	uint8_t a[SK_SIZE], A[PK_SIZE];
	uint8_t b[SK_SIZE];

	// ---------------------------------------------------------------------------------------
	// Testing the accesses and modifications on the integer vectors (private keys and bounds)
	keygen(A, a);
	for (i = 0; i < SK_SIZE; i++)
		b[i] = a[i];

	for (i = 0; i < (int)N; i++)
	{

		update(i, (int8_t)(a[i] + 1), (int8_t*)b);
		for (j = 0; j < N; j++)
		{
			if (i != j)
				assert( b[j] == a[j] );
			else
				assert( b[j] != a[j] );
		};
		update(i, (int8_t)a[i],(int8_t*)b);
	};

	// ---------------------------------------------------------------------------------------
	// Testing both of the strategy evaluation and the group action evaluation (gae)
	
	fp E0[2], EA[2];
	fp_set0(E0[0]); // We start with the Montgomery curve y^2 = x^3 + x
	fp_set0(E0[1]);
	E0[1][0] = (uint64_t)U; // The full-torsion point for E0;
	fp_enc(E0[1], (uint64_t* const)(E0[1]));
	
	for (i = 0; i < 5; i++)
	{
		skgen((int8_t*)a);
		for (j = 0; j < SK_SIZE; j++)
			b[j] = -a[j];
	
		printf("// Doing %d experiment:\t", i);
		printf("%2d%%", 100 * i / (int)5);
		fflush(stdout);
		printf("\r\x1b[K");

		// --------------------
		gae(EA[0], (int8_t*)a, E0);
		assert(!fp_iszero(EA[0]));
		assert(validate(EA[0]));
		fulltorsion_points(EA[1], EA[0]);
		// --------------------
		gae(EA[0], (int8_t*)b, EA);
		assert(fp_iszero(EA[0]));
	};

	printf("// No errors!\n");
	return 0;
}
