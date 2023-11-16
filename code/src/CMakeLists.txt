#  RNG
add_library(rng common/rng.c)
if(SECSIDH_USE_OPENSSL_RAND)
    find_package(OpenSSL 1.1.1 REQUIRED)
    target_include_directories(rng PRIVATE ${OPENSSL_INCLUDE_DIR})
    target_link_libraries(rng PUBLIC ${OPENSSL_CRYPTO_LIBRARY})
    target_compile_definitions(rng PRIVATE USE_OPENSSL_RAND)
endif()

add_library(karatsuba_fp_sqr OBJECT common/fp/karatsuba/sqr.s)

macro(SECSIDH_COMMON_LIBS bits)
    # Select fp implementation
    set (FP_IMPL "")
    if(SECSIDH_GLOBAL_COUNTERS)
        set(FP_IMPL ${FP_IMPL} common/fp/fp-counters.c)
    endif()
    if(SECSIDH_USE_KARATSUBA)
        set(FP_IMPL ${FP_IMPL} common/fp/karatsuba/fp-karatsuba.c common/fp/karatsuba/fp${bits}.s common/fp/fp_inv${bits}.c common/fp/fp_sqrt${bits}.c)
    elseif(SECSIDH_USE_GMP)
        set(FP_IMPL ${FP_IMPL} common/fp/gmp/fp-gmp.c common/fp/gmp/fp${bits}.s)
    else()
        # set(FP_IMPL ${FP_IMPL} common/fp/asm/fp${bits}.s common/uintbig${bits}.s common/fp/fp_inv${bits}.c common/fp/fp_sqrt${bits}.c)
        set(FP_IMPL ${FP_IMPL} common/fp/mulx/fp${bits}.s common/fp/fp_inv${bits}.c common/fp/fp_sqrt${bits}.c)
        # set(FP_IMPL ${FP_IMPL} fp/fp${bits}.s)
    #    message(FATAL_ERROR "Still need to allow non-GMP fp")
    endif()

    add_library(fp-${bits} STATIC ${FP_IMPL})
    target_compile_definitions(fp-${bits} PRIVATE "P${bits}")
    target_compile_definitions(fp-${bits} PUBLIC "NAMESPACE_NAME=${bits}")
    target_include_directories(fp-${bits} PRIVATE CSIDH/csidh-${bits})

    if(SECSIDH_USE_AVX2)
        target_compile_definitions(fp-${bits} PRIVATE "AVX2")
    endif()
    if(SECSIDH_USE_KARATSUBA)
        target_compile_definitions(fp-${bits} PRIVATE "KARATSUBA")
        target_link_libraries(fp-${bits} karatsuba_fp_sqr)
    endif()
    if(SECSIDH_USE_GMP_SEC_FUNCTIONS)
        target_compile_definitions(fp-${bits} PRIVATE "USE_GMP_SEC_FUNCTIONS")
    endif()
    if(SECSIDH_USE_MONTGOMERY)
        target_compile_definitions(fp-${bits} PRIVATE "MONTGOMERY")
    endif()

    add_library(uint-${bits} OBJECT common/uintbig${bits}.s)
    #target_include_directories(uint-${bits} PRIVATE CTIDH/.)
    target_compile_definitions(uint-${bits} PUBLIC "NAMESPACE_NAME=${bits}")

    # target_compile_definitions(fp-${bits} PRIVATE "CTIDH")

    target_link_libraries(fp-${bits} rng uint-${bits} gmp)

    #++++++++++++++++++++++++++++++++++++++++++

    add_library(poly-ctidh${bits} OBJECT common/poly.c)
    target_include_directories(poly-ctidh${bits} PRIVATE common/.)
    target_compile_definitions(poly-ctidh${bits} PUBLIC "NAMESPACE_NAME=${bits}")
    target_compile_definitions(poly-ctidh${bits} PRIVATE "P${bits}")
    if(SECSIDH_USE_KARATSUBA)
        target_compile_definitions(poly-ctidh${bits} PRIVATE "KARATSUBA")
    endif()
    if(SECSIDH_USE_GMP)
        target_compile_definitions(poly-ctidh${bits} PRIVATE "GMP")
    endif()
    if(SECSIDH_USE_AVX2)
        target_compile_definitions(poly-ctidh${bits} PRIVATE "AVX2")
    endif()

    add_library(mont-ctidh${bits} OBJECT common/mont.c)
    target_include_directories(mont-ctidh${bits} PRIVATE common/.)
    target_compile_definitions(mont-ctidh${bits} PUBLIC "NAMESPACE_NAME=${bits}")
    target_compile_definitions(mont-ctidh${bits} PRIVATE "P${bits}")
    if(SECSIDH_USE_KARATSUBA)
        target_compile_definitions(mont-ctidh${bits} PRIVATE "KARATSUBA")
    endif()
    if(SECSIDH_USE_GMP)
        target_compile_definitions(mont-ctidh${bits} PRIVATE "GMP")
    endif()
    if(SECSIDH_USE_AVX2)
        target_compile_definitions(mont-ctidh${bits} PRIVATE "AVX2")
    endif()

    add_library(elligator-ctidh${bits} OBJECT common/elligator.c)
    target_include_directories(elligator-ctidh${bits} PRIVATE common/.)
    target_compile_definitions(elligator-ctidh${bits} PUBLIC "NAMESPACE_NAME=${bits}")
    target_compile_definitions(elligator-ctidh${bits} PRIVATE "P${bits}")
    if(SECSIDH_USE_KARATSUBA)
        target_compile_definitions(elligator-ctidh${bits} PRIVATE "KARATSUBA")
    endif()
    if(SECSIDH_USE_GMP)
        target_compile_definitions(elligator-ctidh${bits} PRIVATE "GMP")
    endif()
    if(SECSIDH_USE_AVX2)
        target_compile_definitions(elligator-ctidh${bits} PRIVATE "AVX2")
    endif()


    add_library(steps-ctidh${bits} OBJECT common/steps.c)
    target_include_directories(steps-ctidh${bits} PRIVATE common/.)
    target_compile_definitions(steps-ctidh${bits} PUBLIC "NAMESPACE_NAME=${bits}")
    target_compile_definitions(steps-ctidh${bits} PRIVATE "P${bits}")
    if(SECSIDH_USE_KARATSUBA)
        target_compile_definitions(steps-ctidh${bits} PRIVATE "KARATSUBA")
    endif()
    if(SECSIDH_USE_GMP)
        target_compile_definitions(steps-ctidh${bits} PRIVATE "GMP")
    endif()
    if(SECSIDH_USE_AVX2)
        target_compile_definitions(steps-ctidh${bits} PRIVATE "AVX2")
    endif()

    add_library(random-ctidh${bits} OBJECT common/random.c)
    target_include_directories(random-ctidh${bits} PRIVATE common/.)
    target_compile_definitions(random-ctidh${bits} PUBLIC "NAMESPACE_NAME=${bits}")
    target_compile_definitions(random-ctidh${bits} PRIVATE "P${bits}")
    if(SECSIDH_USE_KARATSUBA)
        target_compile_definitions(random-ctidh${bits} PRIVATE "KARATSUBA")
    endif()
    if(SECSIDH_USE_GMP)
        target_compile_definitions(random-ctidh${bits} PRIVATE "GMP")
    endif()
    if(SECSIDH_USE_AVX2)
        target_compile_definitions(random-ctidh${bits} PRIVATE "AVX2")
    endif()

    if(SECSIDH_CTIDH_TUNE_MULTS)
        add_library(steps_t-ctidh${bits} OBJECT common/steps_tunemults${bits}.c)
        target_include_directories(steps_t-ctidh${bits} PRIVATE common/.)
        target_compile_definitions(steps_t-ctidh${bits} PUBLIC "NAMESPACE_NAME=${bits}")
        target_compile_definitions(steps_t-ctidh${bits} PRIVATE "P${bits}")
        if(SECSIDH_USE_KARATSUBA)
            target_compile_definitions(steps_t-ctidh${bits} PRIVATE "KARATSUBA")
        endif()
        if(SECSIDH_USE_GMP)
            target_compile_definitions(steps_t-ctidh${bits} PRIVATE "GMP")
        endif()
        if(SECSIDH_USE_AVX2)
            target_compile_definitions(steps_t-ctidh${bits} PRIVATE "AVX2")
        endif()
    elseif(SECSIDH_CTIDH_TUNE_CYCLES)
        add_library(steps_t-ctidh${bits} OBJECT common/steps_tunecycles${bits}.c)
        target_include_directories(steps_t-ctidh${bits} PRIVATE common/.)
        target_compile_definitions(steps_t-ctidh${bits} PUBLIC "NAMESPACE_NAME=${bits}")
        target_compile_definitions(steps_t-ctidh${bits} PRIVATE "P${bits}")
        if(SECSIDH_USE_KARATSUBA)
            target_compile_definitions(steps_t-ctidh${bits} PRIVATE "KARATSUBA")
        endif()
        if(SECSIDH_USE_GMP)
            target_compile_definitions(steps_t-ctidh${bits} PRIVATE "GMP")
        endif()
        if(SECSIDH_USE_AVX2)
            target_compile_definitions(steps_t-ctidh${bits} PRIVATE "AVX2")
        endif()
    else()
        add_library(steps_t-ctidh${bits} OBJECT common/steps_untuned.c)
        target_include_directories(steps_t-ctidh${bits} PRIVATE common/.)
        target_compile_definitions(steps_t-ctidh${bits} PUBLIC "NAMESPACE_NAME=${bits}")
        target_compile_definitions(steps_t-ctidh${bits} PRIVATE "P${bits}")
        if(SECSIDH_USE_KARATSUBA)
            target_compile_definitions(steps_t-ctidh${bits} PRIVATE "KARATSUBA")
        endif()
        if(SECSIDH_USE_GMP)
            target_compile_definitions(steps_t-ctidh${bits} PRIVATE "GMP")
        endif()
        if(SECSIDH_USE_AVX2)
            target_compile_definitions(steps_t-ctidh${bits} PRIVATE "AVX2")
        endif()
    endif()


endmacro()

add_library(int32_sort OBJECT common/int32_sort.c)
target_include_directories(int32_sort PRIVATE common/.)

add_library(fips202 OBJECT common/fips202.c)
target_include_directories(fips202 PRIVATE common/.)

add_library(keccakf1600 OBJECT common/keccakf1600.c)
target_include_directories(fips202 PRIVATE common/.)

macro(SECSIDH_BUILD_PARAMETERSET_CTIDH bits)

    if(SECSIDH_ENABLE_CTIDH${bits})
        set(impl_variant ctidh)

        add_library(csidh-ctidh${bits} OBJECT CTIDH/ctidh.c)
        target_include_directories(csidh-ctidh${bits} PRIVATE CTIDH/. CSIDH/csidh-${bits})
        target_compile_definitions(csidh-ctidh${bits} PUBLIC "NAMESPACE_NAME=${bits}")
        target_compile_definitions(csidh-ctidh${bits} PRIVATE "P${bits}" "CTIDH")
        if(SECSIDH_USE_KARATSUBA)
            target_compile_definitions(csidh-ctidh${bits} PRIVATE "KARATSUBA")
        endif()
        if(SECSIDH_USE_GMP)
            target_compile_definitions(csidh-ctidh${bits} PRIVATE "GMP")
        endif()
        if(SECSIDH_USE_AVX2)
            target_compile_definitions(csidh-ctidh${bits} PRIVATE "AVX2")
        endif()

        add_library(validate-ctidh${bits} OBJECT common/validate.c)
        target_include_directories(validate-ctidh${bits} PRIVATE common/.)
        target_compile_definitions(validate-ctidh${bits} PUBLIC "NAMESPACE_NAME=${bits}")
        target_compile_definitions(validate-ctidh${bits} PRIVATE "P${bits}" "CTIDH")
        if(SECSIDH_USE_KARATSUBA)
            target_compile_definitions(validate-ctidh${bits} PRIVATE "KARATSUBA")
        endif()
        if(SECSIDH_USE_GMP)
            target_compile_definitions(validate-ctidh${bits} PRIVATE "GMP")
        endif()
        if(SECSIDH_USE_AVX2)
            target_compile_definitions(validate-ctidh${bits} PRIVATE "AVX2")
        endif()

        add_library(skgen-ctidh${bits} OBJECT common/skgen.c)
        target_include_directories(skgen-ctidh${bits} PRIVATE common/.)
        target_compile_definitions(skgen-ctidh${bits} PUBLIC "NAMESPACE_NAME=${bits}")
        target_compile_definitions(skgen-ctidh${bits} PRIVATE "P${bits}" "CTIDH")
        if(SECSIDH_USE_KARATSUBA)
            target_compile_definitions(skgen-ctidh${bits}  PRIVATE "KARATSUBA")
        endif()
        if(SECSIDH_USE_GMP)
            target_compile_definitions(skgen-ctidh${bits} PRIVATE "GMP")
        endif()
        if(SECSIDH_USE_AVX2)
            target_compile_definitions(skgen-ctidh${bits} PRIVATE "AVX2")
        endif()

        add_library(primes-ctidh${bits} OBJECT common/primes${bits}.c)
        target_include_directories(primes-ctidh${bits} PRIVATE common/.)
        target_compile_definitions(primes-ctidh${bits} PUBLIC "NAMESPACE_NAME=${bits}")
        target_compile_definitions(primes-ctidh${bits} PRIVATE "P${bits}" "CTIDH")
        if(SECSIDH_USE_KARATSUBA)
            target_compile_definitions(primes-ctidh${bits}  PRIVATE "KARATSUBA")
        endif()
        if(SECSIDH_USE_GMP)
            target_compile_definitions(primes-ctidh${bits} PRIVATE "GMP")
        endif()
        if(SECSIDH_USE_AVX2)
            target_compile_definitions(primes-ctidh${bits} PRIVATE "AVX2")
        endif()

        add_library(ctidh-${bits} OBJECT CTIDH/ctidh_api.c)
        target_include_directories(ctidh-${bits} PRIVATE CTIDH/. CSIDH/csidh-${bits})
        target_compile_definitions(ctidh-${bits} PUBLIC "NAMESPACE_NAME=${bits}")
        target_compile_definitions(ctidh-${bits} PRIVATE "P${bits}" "CTIDH")
        if(SECSIDH_USE_KARATSUBA)
            target_compile_definitions(ctidh-${bits}  PRIVATE "KARATSUBA")
        endif()
        if(SECSIDH_USE_GMP)
            target_compile_definitions(ctidh-${bits} PRIVATE "GMP")
        endif()
        if(SECSIDH_USE_AVX2)
            target_compile_definitions(ctidh-${bits} PRIVATE "AVX2")
        endif()

        add_library(secsidh-ctidh${bits})
        target_include_directories(
            secsidh-ctidh${bits} PRIVATE
            CTIDH/.
            CSIDH/csidh-${bits}
        )
        target_link_libraries(secsidh-ctidh${bits}
            rng
            uint-${bits}
            primes-ctidh${bits}
            fp-${bits}
            poly-ctidh${bits}
            mont-ctidh${bits}
            elligator-ctidh${bits}
            skgen-ctidh${bits}
            validate-ctidh${bits}
            csidh-ctidh${bits}
            steps-ctidh${bits}
            random-ctidh${bits}
            steps_t-ctidh${bits}
            int32_sort
            fips202
            keccakf1600
        )
        target_compile_definitions(secsidh-ctidh${bits} PUBLIC "NAMESPACE_NAME=${bits}")
        target_compile_definitions(secsidh-ctidh${bits} PRIVATE "P${bits}" "CTIDH")
        if(SECSIDH_USE_KARATSUBA)
            target_compile_definitions(secsidh-ctidh${bits}  PRIVATE "KARATSUBA")
        endif()
        if(SECSIDH_USE_GMP)
            target_compile_definitions(secsidh-ctidh${bits} PRIVATE "GMP")
        endif()
        if(SECSIDH_USE_AVX2)
            target_compile_definitions(secsidh-ctidh${bits} PRIVATE "AVX2")
        endif()
    endif()
endmacro()

macro(SECSIDH_BUILD_PARAMETERSET_CSIDH bits)

    if(SECSIDH_ENABLE_CSIDH${bits})
        set(impl_variant csidh)

        add_library(csidh-csidh${bits} OBJECT CSIDH/csidh.c)
        target_include_directories(csidh-csidh${bits} PRIVATE common/. CSIDH/.)
        target_compile_definitions(csidh-csidh${bits} PUBLIC "NAMESPACE_NAME=${bits}")
        target_compile_definitions(csidh-csidh${bits} PRIVATE "P${bits}" "CSIDH")
        if(SECSIDH_USE_KARATSUBA)
            target_compile_definitions(csidh-csidh${bits}  PRIVATE "KARATSUBA")
        endif()
        if(SECSIDH_USE_GMP)
            target_compile_definitions(csidh-csidh${bits} PRIVATE "GMP")
        endif()
        if(SECSIDH_USE_AVX2)
            target_compile_definitions(csidh-csidh${bits} PRIVATE "AVX2")
        endif()

        add_library(xmul_cofactor-csidh${bits} OBJECT CSIDH/cofactor/xmul_cofactor_p${bits}.c)
        target_include_directories(xmul_cofactor-csidh${bits} PRIVATE csidh-${bits} .)
        target_compile_definitions(xmul_cofactor-csidh${bits} PUBLIC "NAMESPACE_NAME=${bits}")
        target_compile_definitions(xmul_cofactor-csidh${bits} PRIVATE "P${bits}")
        if(SECSIDH_USE_KARATSUBA)
            target_compile_definitions(xmul_cofactor-csidh${bits}  PRIVATE "KARATSUBA")
        endif()
        if(SECSIDH_USE_GMP)
            target_compile_definitions(xmul_cofactor-csidh${bits} PRIVATE "GMP")
        endif()
        if(SECSIDH_USE_AVX2)
            target_compile_definitions(xmul_cofactor-csidh${bits} PRIVATE "AVX2")
        endif()

        add_library(validate-csidh${bits} OBJECT common/validate.c)
        target_include_directories(validate-csidh${bits} PRIVATE common/.)
        target_compile_definitions(validate-csidh${bits} PUBLIC "NAMESPACE_NAME=${bits}")
        target_compile_definitions(validate-csidh${bits} PRIVATE "P${bits}")
        if(SECSIDH_USE_KARATSUBA)
            target_compile_definitions(validate-csidh${bits}  PRIVATE "KARATSUBA")
        endif()
        if(SECSIDH_USE_GMP)
            target_compile_definitions(validate-csidh${bits} PRIVATE "GMP")
        endif()
        if(SECSIDH_USE_AVX2)
            target_compile_definitions(validate-csidh${bits} PRIVATE "AVX2")
        endif()

        add_library(primes-csidh${bits} OBJECT common/primes${bits}.c)
        target_include_directories(primes-csidh${bits} PRIVATE common/.)
        target_compile_definitions(primes-csidh${bits} PUBLIC "NAMESPACE_NAME=${bits}")
        target_compile_definitions(primes-csidh${bits} PRIVATE "P${bits}" "CSIDH")
        if(SECSIDH_USE_KARATSUBA)
            target_compile_definitions(primes-csidh${bits}  PRIVATE "KARATSUBA")
        endif()
        if(SECSIDH_USE_GMP)
            target_compile_definitions(primes-csidh${bits} PRIVATE "GMP")
        endif()
        if(SECSIDH_USE_AVX2)
            target_compile_definitions(primes-csidh${bits} PRIVATE "AVX2")
        endif()

        add_library(skgen-csidh${bits} OBJECT common/skgen.c)
        target_include_directories(skgen-csidh${bits} PRIVATE common/.)
        target_compile_definitions(skgen-csidh${bits} PUBLIC "NAMESPACE_NAME=${bits}")
        target_compile_definitions(skgen-csidh${bits} PRIVATE "P${bits}" "CSIDH")
        if(SECSIDH_USE_KARATSUBA)
            target_compile_definitions(skgen-csidh${bits}  PRIVATE "KARATSUBA")
        endif()
        if(SECSIDH_USE_GMP)
            target_compile_definitions(skgen-csidh${bits} PRIVATE "GMP")
        endif()
        if(SECSIDH_USE_AVX2)
            target_compile_definitions(skgen-csidh${bits} PRIVATE "AVX2")
        endif()

        add_library(csidh-${bits} OBJECT CSIDH/csidh_api.c)
        target_include_directories(csidh-${bits} PRIVATE common/. CSIDH/.)
        target_compile_definitions(csidh-${bits} PUBLIC "NAMESPACE_NAME=${bits}")
        target_compile_definitions(csidh-${bits} PRIVATE "P${bits}" "CSIDH")
        if(SECSIDH_USE_KARATSUBA)
            target_compile_definitions(csidh-${bits} PRIVATE "KARATSUBA")
        endif()
        if(SECSIDH_USE_GMP)
            target_compile_definitions(csidh-${bits} PRIVATE "GMP")
        endif()
        if(SECSIDH_USE_AVX2)
            target_compile_definitions(csidh-${bits} PRIVATE "AVX2")
        endif()

        add_library(secsidh-csidh${bits})
        target_include_directories(
            secsidh-csidh${bits} PRIVATE
            common/.
            CSIDH/.
        )
        target_link_libraries(secsidh-csidh${bits}
            rng
            uint-${bits}
            primes-csidh${bits}
            fp-${bits}
            poly-ctidh${bits}
            mont-ctidh${bits}
            elligator-ctidh${bits}
            skgen-csidh${bits}
            validate-csidh${bits}
            xmul_cofactor-csidh${bits}
            csidh-csidh${bits}
            csidh-${bits}
            steps-ctidh${bits}
            random-ctidh${bits}
            steps_t-ctidh${bits}
            int32_sort
            fips202
            keccakf1600
        )
        target_compile_definitions(secsidh-csidh${bits} PUBLIC "NAMESPACE_NAME=${bits}")
        target_compile_definitions(secsidh-csidh${bits} PRIVATE "P${bits}" "CSIDH")
        if(SECSIDH_USE_KARATSUBA)
            target_compile_definitions(secsidh-csidh${bits} PRIVATE "KARATSUBA")
        endif()
        if(SECSIDH_USE_GMP)
            target_compile_definitions(secsidh-csidh${bits} PRIVATE "GMP")
        endif()
        if(SECSIDH_USE_AVX2)
            target_compile_definitions(secsidh-csidh${bits} PRIVATE "AVX2")
        endif()
    endif()
endmacro()

list(APPEND secsidh_common_parametersets ${SECSIDH_PARAMETER_SETS_CSIDH} ${SECSIDH_PARAMETER_SETS_CTIDH})
list(REMOVE_DUPLICATES  secsidh_common_parametersets)

foreach(bits IN ITEMS ${secsidh_common_parametersets})
    message(STATUS "GENERATING COMMON TARGETS FOR " ${bits})
    SECSIDH_COMMON_LIBS(${bits})
endforeach()

foreach(bits IN ITEMS ${SECSIDH_PARAMETER_SETS_CSIDH})
    message(STATUS "GENERATING PARAMETERSET CSIDH TARGETS FOR " ${bits})
    SECSIDH_BUILD_PARAMETERSET_CSIDH(${bits})
endforeach()


foreach(bits IN ITEMS ${SECSIDH_PARAMETER_SETS_CTIDH})
    message(STATUS "GENERATING PARAMETERSET CTIDH TARGETS FOR " ${bits})
    SECSIDH_BUILD_PARAMETERSET_CTIDH(${bits})
endforeach()
