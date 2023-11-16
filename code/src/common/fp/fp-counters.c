#if GLOBAL_COUNTERS != 0

#include <stdint.h>
#include "fp-counters.h"

__thread uint64_t fpadd; // counter of fp-additions
__thread uint64_t fpsqr; // counter of fp-squarings
__thread uint64_t fpmul;

#endif
