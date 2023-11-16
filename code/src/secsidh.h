#ifndef _SECSIDH_CONFIG_H_
#define _SECSIDH_CONFIG_H_

#include <secsidh/secsidhconfig.h>
#include <stdint.h>

#ifdef SECSIDH_ENABLE_CSIDH2047m1l226

#define SECSIDH_CSIDH2047m1l226_PK_SIZE 256+16
#define SECSIDH_CSIDH2047m1l226_SK_SIZE 28
#define SECSIDH_CSIDH2047m1l226_SS_SIZE 256

int secsidh_CSIDH2047m1l226_keygen(uint8_t *pk, uint8_t *sk);
int secsidh_CSIDH2047m1l226_derive(uint8_t *ss, const uint8_t *pk, const uint8_t *sk);

#endif

#ifdef SECSIDH_ENABLE_CSIDH4095m27l262

#define SECSIDH_CSIDH4095m27l262_PK_SIZE 512+16
#define SECSIDH_CSIDH4095m27l262_SK_SIZE 32
#define SECSIDH_CSIDH4095m27l262_SS_SIZE 512

int secsidh_CSIDH4095m27l262_keygen(uint8_t *pk, uint8_t *sk);
int secsidh_CSIDH4095m27l262_derive(uint8_t *ss, const uint8_t *pk, const uint8_t *sk);

#endif

#ifdef SECSIDH_ENABLE_CSIDH5119m46l244

#define SECSIDH_CSIDH5119m46l244_PK_SIZE 640+16
#define SECSIDH_CSIDH5119m46l244_SK_SIZE 30
#define SECSIDH_CSIDH5119m46l244_SS_SIZE 640

int secsidh_CSIDH5119m46l244_keygen(uint8_t *pk, uint8_t *sk);
int secsidh_CSIDH5119m46l244_derive(uint8_t *ss, const uint8_t *pk, const uint8_t *sk);

#endif

#ifdef SECSIDH_ENABLE_CSIDH6143m59l262

#define SECSIDH_CSIDH6143m59l262_PK_SIZE 768+16
#define SECSIDH_CSIDH6143m59l262_SK_SIZE 32
#define SECSIDH_CSIDH6143m59l262_SS_SIZE 768

int secsidh_CSIDH6143m59l262_keygen(uint8_t *pk, uint8_t *sk);
int secsidh_CSIDH6143m59l262_derive(uint8_t *ss, const uint8_t *pk, const uint8_t *sk);

#endif

#ifdef SECSIDH_ENABLE_CSIDH8191m78l338

#define SECSIDH_CSIDH8191m78l338_PK_SIZE 1024+16
#define SECSIDH_CSIDH8191m78l338_SK_SIZE 42
#define SECSIDH_CSIDH8191m78l338_SS_SIZE 1024

int secsidh_CSIDH8191m78l338_keygen(uint8_t *pk, uint8_t *sk);
int secsidh_CSIDH8191m78l338_derive(uint8_t *ss, const uint8_t *pk, const uint8_t *sk);

#endif

#ifdef SECSIDH_ENABLE_CSIDH9215m85l389

#define SECSIDH_CSIDH9215m85l389_PK_SIZE 1152+16
#define SECSIDH_CSIDH9215m85l389_SK_SIZE 48
#define SECSIDH_CSIDH9215m85l389_SS_SIZE 1152

int secsidh_CSIDH9215m85l389_keygen(uint8_t *pk, uint8_t *sk);
int secsidh_CSIDH9215m85l389_derive(uint8_t *ss, const uint8_t *pk, const uint8_t *sk);

#endif

#ifdef SECSIDH_ENABLE_CTIDH2047m1l226

#define SECSIDH_CTIDH2047m1l226_PK_SIZE 256
#define SECSIDH_CTIDH2047m1l226_SK_SIZE 226
#define SECSIDH_CTIDH2047m1l226_SS_SIZE 256

int secsidh_CTIDH2047m1l226_keygen(uint8_t *pk, uint8_t *sk);
int secsidh_CTIDH2047m1l226_derive(uint8_t *ss, const uint8_t *pk, const uint8_t *sk);

#endif

#ifdef SECSIDH_ENABLE_CTIDH4095m27l262

#define SECSIDH_CTIDH4095m27l262_PK_SIZE 512
#define SECSIDH_CTIDH4095m27l262_SK_SIZE 262
#define SECSIDH_CTIDH4095m27l262_SS_SIZE 512

int secsidh_CTIDH4095m27l262_keygen(uint8_t *pk, uint8_t *sk);
int secsidh_CTIDH4095m27l262_derive(uint8_t *ss, const uint8_t *pk, const uint8_t *sk);

#endif

#ifdef SECSIDH_ENABLE_CTIDH5119m46l244

#define SECSIDH_CTIDH5119m46l244_PK_SIZE 640
#define SECSIDH_CTIDH5119m46l244_SS_SIZE 640
#define SECSIDH_CTIDH5119m46l244_SK_SIZE 244

int secsidh_CTIDH5119m46l244_keygen(uint8_t *pk, uint8_t *sk);
int secsidh_CTIDH5119m46l244_derive(uint8_t *ss, const uint8_t *pk, const uint8_t *sk);

#endif

#ifdef SECSIDH_ENABLE_CTIDH6143m59l262

#define SECSIDH_CTIDH6143m59l262_PK_SIZE 768
#define SECSIDH_CTIDH6143m59l262_SK_SIZE 262
#define SECSIDH_CTIDH6143m59l262_SS_SIZE 768

int secsidh_CTIDH6143m59l262_keygen(uint8_t *pk, uint8_t *sk);
int secsidh_CTIDH6143m59l262_derive(uint8_t *ss, const uint8_t *pk, const uint8_t *sk);

#endif

#ifdef SECSIDH_ENABLE_CTIDH8191m78l338

#define SECSIDH_CTIDH8191m78l338_PK_SIZE 1024
#define SECSIDH_CTIDH8191m78l338_SK_SIZE 338
#define SECSIDH_CTIDH8191m78l338_SS_SIZE 1024

int secsidh_CTIDH8191m78l338_keygen(uint8_t *pk, uint8_t *sk);
int secsidh_CTIDH8191m78l338_derive(uint8_t *ss, const uint8_t *pk, const uint8_t *sk);

#endif

#ifdef SECSIDH_ENABLE_CTIDH9215m85l389

#define SECSIDH_CTIDH9215m85l389_PK_SIZE 1152
#define SECSIDH_CTIDH9215m85l389_SK_SIZE 389
#define SECSIDH_CTIDH9215m85l389_SS_SIZE 1152

int secsidh_CTIDH9215m85l389_keygen(uint8_t *pk, uint8_t *sk);
int secsidh_CTIDH9215m85l389_derive(uint8_t *ss, const uint8_t *pk, const uint8_t *sk);

#endif

#endif
