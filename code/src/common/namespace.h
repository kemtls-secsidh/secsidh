#ifndef _SECSIDH_NAMESPACE_
#define _SECSIDH_NAMESPACE_

#ifndef NAMESPACE_NAME
#error no namespace
#endif

#ifdef CTIDH
# define CONCAT(A, B)          secsidh_ctidh_internal_##A##_##B
# define APICONCAT(A, B)       secsidh_CTIDH##A##_##B
#else
# define CONCAT(A, B)          secsidh_csidh_internal_##A##_##B
# define APICONCAT(A, B)       secsidh_CSIDH##A##_##B
#endif

#define COMCONCAT(A, B)        secsidh_internal_##A##_##B

#define CONCAT2(A, B)         CONCAT(A, B)
#define NS(fname)             CONCAT2(NAMESPACE_NAME, fname)

#define CONCATCOM2(A, B)      COMCONCAT(A, B)
#define COMMON(fname)         CONCATCOM2(NAMESPACE_NAME, fname)

#define APICONCAT2(A, B)      APICONCAT(A, B)
#define NSAPI(fname)          APICONCAT2(NAMESPACE_NAME, fname)

#endif
