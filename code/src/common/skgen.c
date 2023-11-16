#include <string.h>
#include <assert.h>

#include "primes.h"
#include "random.h"

#ifdef CTIDH
#include "../CTIDH/ctidh.h"

void ctidh_private(private_key *priv)
{
  memset(&priv->e, 0, sizeof(priv->e));
  long long pos = 0;
  for (long long b = 0;b < primes_batches;++b) {
    long long w = primes_batchsize[b];
    long long S = primes_batchbound[b];
    random_boundedl1(priv->e + pos,w,S);
    pos += w;
  }
  assert(pos <= primes_num);
//   memset(priv->e, 1, sizeof(private_key));
//   priv->e[0] = 1;
}


#else
#include "../CSIDH/csidh.h"

void csidh_private(private_key *priv)
{
    int i;
    uint8_t rnd;
    for(i = 0; i < (int)N; i++) {
        randombytes(&rnd, 1);
        rnd = rnd & 0x1;
        priv->e[i] = rnd - (rnd ^ 0x1); 
    };
    // memset(priv->e, 1, sizeof(private_key));
}

#endif




