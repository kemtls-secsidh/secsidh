#ifndef ELLIGATOR_H
#define ELLIGATOR_H

#include "proj.h"
#include "../common/namespace.h"

#define elligator COMMON(elligator)
#define elligator_seeded COMMON(elligator_seeded)

extern void elligator(proj *plus,proj *minus,const proj *A);
extern void elligator_seeded(proj *Tp, proj *Tm, proj const *A, fp const *u);

#endif
