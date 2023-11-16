#undef NDEBUG
#include<time.h>

#include <secsidh/secsidh.h>
#include <assert.h>
#include <string.h>
#include <stdlib.h>
#include <stdio.h>
#include "cycle.h"
// #include "fp.h"
#include "fp-counters.h"
#include "primes.h"
#include "ctidh.h"
#include "ctidh_api.h"

#if GLOBAL_COUNTERS != 0
#define cprintf(...) printf(__VA_ARGS__)
#else
#define cprintf(...)
#endif

#define CPASTER(x, y) SECSIDH_CTIDH##x##_##y
#define CEVALUATOR(x, y)  CPASTER(x, y)
#define CONSTNAMESPACE(name)  CEVALUATOR(BITS, name)
#define SK_SIZE  	CONSTNAMESPACE(SK_SIZE)
#define PK_SIZE     CONSTNAMESPACE(PK_SIZE)
#define SS_SIZE     CONSTNAMESPACE(SS_SIZE)

#define pk_size FNAMESPACE(pk_size)
#define sk_size FNAMESPACE(sk_size)
#define ss_size FNAMESPACE(ss_size)

#define FPASTER(x, y) secsidh_CTIDH##x##_##y
#define FEVALUATOR(x, y)  FPASTER(x, y)
#define FNAMESPACE(name)  FEVALUATOR(BITS, name)

#define keygen FNAMESPACE(keygen)
#define derive FNAMESPACE(derive)

static void ss_print(const uint8_t* ss, char *c, size_t size)
{
	printf("%s := 0x", c);
	int i;
	for(i=size-1; i > -1; i--)
		printf("%02" PRIX8 "", ss[i]);
	printf(";\n");
}

static int dumb_fp_isequal(const uint8_t* a, const uint8_t* b, size_t size) {
	return memcmp(a, b, size) == 0;
}

int main(void)
{
	ticks cc0, cc1;	// for measuringthe clock cycles
    printf("PK_SIZE = %d and pk_size = %d\n", (int) PK_SIZE, (int) pk_size);
    printf("SK_SIZE = %d and sk_size = %d\n", (int) SK_SIZE, (int) sk_size);    
    printf("SS_SIZE = %d and ss_size = %d\n", (int) SS_SIZE, (int) ss_size);    
	assert(PK_SIZE == pk_size);
	assert(SK_SIZE == sk_size);
	assert(SS_SIZE == ss_size);


	//------------------------------------------------------
	// Key generation
	printf("\033[0;33m// --------------\033[0m\n");
	printf("\033[0;33m// Key generation\033[0m\n");

    printf("sizeof private key = %lu \n", sizeof(private_key));
    printf("sizeof public key = %lu \n", sizeof(public_key));

	// ----------
	// Alice
	printf("\n\033[0;35m// Alice\033[0m\n");
	// uint8_t a[sizeof(private_key)] = {0}, A[sizeof(public_key)] = {0}, ss_a[sizeof(public_key)];
	uint8_t a[SK_SIZE] = {0}, A[PK_SIZE] = {0}, ss_a[SS_SIZE];
	cc0 = getticks();
	keygen(A, a);
	cc1 = getticks();
	ss_print(a, "sk_a", SK_SIZE);
	ss_print(A, "pk_a", PK_SIZE);
	cprintf("Running-time (millions): %2.03lfM + %2.03lfS + %2.03lfa = \033[1;35m%2.03lfM\033[0m\n", (1.0 * fpmul) / 1000000.0, (1.0 * fpsqr) / 1000000.0, (1.0 * fpadd) / 1000000.0, (1.0 * (fpmul + fpsqr)) / 1000000.0);
	printf("Clock cycles (millions): \033[1;35m%7.03lf\033[0m\n", ( 1.0 * (cc1 - cc0)) / 1000000.0);
    // exit(0);
	// ----------
	// Bob
	printf("\n\033[0;34m// Bob\033[0m\n");
	uint8_t b[SK_SIZE], B[PK_SIZE], ss_b[SS_SIZE];
	cc0 = getticks();
	keygen(B, b);
	cc1 = getticks();
	ss_print(b, "sk_b", SK_SIZE);
	ss_print(B, "pk_b", PK_SIZE);
	cprintf("Running-time (millions): %2.03lfM + %2.03lfS + %2.03lfa = \033[1;34m%2.03lfM\033[0m\n", (1.0 * fpmul) / 1000000.0, (1.0 * fpsqr) / 1000000.0, (1.0 * fpadd) / 1000000.0, (1.0 * (fpmul + fpsqr)) / 1000000.0);
	printf("Clock cycles (millions): \033[1;34m%7.03lf\033[0m\n", ( 1.0 * (cc1 - cc0)) / 1000000.0);

	//------------------------------------------------------
	// Secret sharing derivation
	printf("\n\033[0;33m// -------------------------\033[0m\n");
	printf("\033[0;33m// Secret sharing generation\033[0m\n");

	// ----------------
	// Alice
	printf("\n\033[0;35m// Alice\033[0m\n");
	cc0 = getticks();
	assert(derive(ss_a, B, a) == 0);
	cc1 = getticks();
	ss_print(ss_a, "ss_a", SS_SIZE);
	cprintf("Running-time (millions) [without validation]: %2.03lfM + %2.03lfS + %2.03lfa = \033[1;35m%2.03lfM\033[0m\n",
			(1.0 * fpmul) / 1000000.0, (1.0 * fpsqr) / 1000000.0, (1.0 * fpadd) / 1000000.0, (1.0 * (fpmul + fpsqr)) / 1000000.0);
	printf("Clock cycles (millions) [including validation]: \033[1;35m%7.03lf\033[0m\n", ( 1.0 * (cc1 - cc0)) / 1000000.0);

	// ----------------
	// Bob
	printf("\n\033[0;34m// Bob\033[0m\n");
	cc0 = getticks();
	assert(derive(ss_b, A, b) == 0);
	cc1 = getticks();
	ss_print(ss_b, "ss_b", SS_SIZE);
	cprintf("Running-time (millions) [without validation]: %2.03lfM + %2.03lfS + %2.03lfa = \033[1;34m%2.03lfM\033[0m\n",
			(1.0 * fpmul) / 1000000.0, (1.0 * fpsqr) / 1000000.0, (1.0 * fpadd) / 1000000.0, (1.0 * (fpmul + fpsqr)) / 1000000.0);
	printf("Clock cycles (millions) [including validation]: \033[1;34m%7.03lf\033[0m\n", ( 1.0 * (cc1 - cc0)) / 1000000.0);

	// =============================
	// Verifying same secret sharing
	assert( dumb_fp_isequal(ss_a, ss_b, SS_SIZE) );

	//------------------------------------------------------
	printf("\n\033[0;32m// Successfully secret sharing computation!\033[0m\n");
	return 0;
}
