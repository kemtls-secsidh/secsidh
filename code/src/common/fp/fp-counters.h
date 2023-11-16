#ifndef _FP_COUNTERS_H
#define _FP_COUNTERS_H

#if GLOBAL_COUNTERS != 0

#include <stdint.h>
#include "../namespace.h"

#define fpadd COMMON(fpadd)
extern __thread uint64_t fpadd; // counter of fp-additions
#define fpsqr COMMON(fpsqr)
extern __thread uint64_t fpsqr; // counter of fp-squarings
#define fpmul COMMON(fpmul)
extern __thread uint64_t fpmul;

#define CNT_FP_ADD_INC() fpadd++
#define CNT_FP_MUL_INC() fpmul++
#define CNT_FP_MUL_DEC() fpmul--
#define CNT_FP_SQR_INC() fpsqr++

static inline void init_counters(void)
{
	fpadd = 0;
	fpsqr = 0;
	fpmul = 0;
}
#else

#define CNT_FP_ADD_INC()
#define CNT_FP_MUL_INC()
#define CNT_FP_MUL_DEC()
#define CNT_FP_SQR_INC()

static inline void init_counters(void)
{
    ; // NOOP
}
#endif

#endif /* !defined(_FP_COUNTERS_H) */
