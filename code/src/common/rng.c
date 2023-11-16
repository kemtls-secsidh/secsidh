#include "rng.h"

#ifndef USE_OPENSSL_RAND
#include <stdlib.h>
#include <unistd.h>
#include <fcntl.h>

void randombytes(void *x, size_t l)
{
    static __thread int fd = -1;
    ssize_t n;
    if (fd < 0 && 0 > (fd = open("/dev/urandom", O_RDONLY)))
        exit(1);
    for (size_t i = 0; i < l; i += n)
        if (0 >= (n = read(fd, (char *) x + i, l - i)))
            exit(2);
}
#else

#include <stdlib.h>
#include <stdint.h>
#include <limits.h>
#include <stdio.h>

static inline int randombytes_from_openssl(uint8_t *buf, int bytes);

void randombytes(void *x, size_t l)
{
    int l_as_int;

    if (l <= INT_MAX) {
        l_as_int = (int) l;
    } else {
        fprintf(stderr, "Error: requested too many random bytes (%zu > %d)\n",
                l, INT_MAX);
        exit(EXIT_FAILURE);
    }
    if (!randombytes_from_openssl((uint8_t*)x, l_as_int))
        exit(EXIT_FAILURE);
}

#include <openssl/rand.h>

#define RAND_POLL_RETRY 3 // randomness could be temporarily unavailable, do not panic immediately
static inline
int randombytes_from_openssl(uint8_t *buf, int bytes)
{
    int i;
    for (i=0; i < RAND_POLL_RETRY; i++) {
        if (RAND_status() == 1)
            break;
        RAND_poll();
    }
    if (RAND_priv_bytes(buf, bytes) != 1) {
        fprintf(stderr, "Failure retrieving randomness from OpenSSL\n");
        return 0;
    }
    return 1;
}
#endif
