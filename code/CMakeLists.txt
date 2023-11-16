cmake_minimum_required(VERSION 3.13)

project(secsidh C ASM)

# Prepare variable to collect enabled parametersets
set(SECSIDH_PARAMETER_SETS_COMMON "")
set(SECSIDH_PARAMETER_SETS_CSIDH "")
set(SECSIDH_PARAMETER_SETS_CTIDH "")

# set(CMAKE_VERBOSE_MAKEFILE ON)

# define the options for this project
option(SECSIDH_GLOBAL_COUNTERS "Use global counters" ON)
option(SECSIDH_USE_OPENSSL_RAND "Use OpenSSL RNG" OFF)

# following the allowed variants for the arithmetic
# 1 := not constant-time GMP w/o Montgomery reduction
# 2 := constant-time GMP w/o Montgomery reduction
# 3 := constant-time GMP with Montgomery reduction
# 4 := ASM Karatsuba with Montgomery reduction
# 5 := ASM
# 6 := AVX2
option(SECSIDH_ARITHMETIC "Arithmetic implementation: 4: GMP Karatsuba, 5: Mulx" "4")

# if(${SECSIDH_ARITHMETIC} STREQUAL "1")
#     option(SECSIDH_USE_GMP "Use the GMP implementation" ON)
#     option(SECSIDH_USE_GMP_SEC_FUNCTIONS "Use GMP low-level functions for cryptography" OFF)
#     option(SECSIDH_USE_KARATSUBA "Use the Karatsuba multiplication" OFF)
#     option(SECSIDH_USE_MONTGOMERY "Use Montgomery reduction" OFF)
#     option(SECSIDH_USE_AVX2 "Use AVX2" OFF)

if(${SECSIDH_ARITHMETIC} STREQUAL "2")
    option(SECSIDH_USE_GMP "Use the GMP implementation" ON)
    option(SECSIDH_USE_GMP_SEC_FUNCTIONS "Use GMP low-level functions for cryptography" ON)
    option(SECSIDH_USE_KARATSUBA "Use the Karatsuba multiplication" OFF)
    option(SECSIDH_USE_MONTGOMERY "Use Montgomery reduction" OFF)
    option(SECSIDH_USE_AVX2 "Use AVX2" OFF)
elseif(${SECSIDH_ARITHMETIC} STREQUAL "3")
    option(SECSIDH_USE_GMP "Use the GMP implementation" ON)
    option(SECSIDH_USE_GMP_SEC_FUNCTIONS "Use GMP low-level functions for cryptography" ON)
    option(SECSIDH_USE_KARATSUBA "Use the Karatsuba multiplication" OFF)
    option(SECSIDH_USE_MONTGOMERY "Use Montgomery reduction" ON)
    option(SECSIDH_USE_AVX2 "Use AVX2" OFF)
elseif(${SECSIDH_ARITHMETIC} STREQUAL "4")
    option(SECSIDH_USE_GMP "Use the GMP implementation" ON)
    option(SECSIDH_USE_GMP_SEC_FUNCTIONS "Use GMP low-level functions for cryptography" ON)
    option(SECSIDH_USE_KARATSUBA "Use the Karatsuba multiplication" ON)
    option(SECSIDH_USE_MONTGOMERY "Use Montgomery reduction" ON)
    option(SECSIDH_USE_AVX2 "Use AVX2" OFF)
elseif(${SECSIDH_ARITHMETIC} STREQUAL "5")
    option(SECSIDH_USE_GMP "Use the GMP implementation" OFF)
    option(SECSIDH_USE_GMP_SEC_FUNCTIONS "Use GMP low-level functions for cryptography" OFF)
    option(SECSIDH_USE_KARATSUBA "Use the Karatsuba multiplication" OFF)
    option(SECSIDH_USE_MONTGOMERY "Use Montgomery reduction" OFF)
    option(SECSIDH_USE_AVX2 "Use AVX2" OFF)
elseif(${SECSIDH_ARITHMETIC} STREQUAL "6")
    option(SECSIDH_USE_GMP "Use the GMP implementation" ON)
    option(SECSIDH_USE_GMP_SEC_FUNCTIONS "Use GMP low-level functions for cryptography" OFF)
    option(SECSIDH_USE_KARATSUBA "Use the Karatsuba multiplication" ON)
    option(SECSIDH_USE_MONTGOMERY "Use Montgomery reduction" ON)
    option(SECSIDH_USE_AVX2 "Use AVX2" ON)
endif()


option(SECSIDH_USE_RANDOMNESS "Use the randomness-based implementation" OFF)
set(SECSIDH_CSIDH_VARIANT "df")
#set(SECSIDH_CSIDH_VARIANT "wd1")
#set(SECSIDH_CSIDH_VARIANT "wd2")

# due to segmentation faults@CTIDH code, no tuned files for the prime "9215m85l389" available!!!
option(SECSIDH_CTIDH_TUNE_MULTS "Use version tuned for multiplications " ON)
option(SECSIDH_CTIDH_TUNE_CYCLES "Use version tuned for clock cycles " OFF)


# convenience macro define all parameter sets
macro(SECSIDH_DEFINE_PARAMETERS bits default)
    option(SECSIDH_ENABLE_CSIDH${bits} "Enable CSIDH${bits} parameterset." ${default})
    if(SECSIDH_ENABLE_CSIDH${bits})
        set(SECSIDH_PARAMETER_SETS_CSIDH ${SECSIDH_PARAMETER_SETS_CSIDH} ${bits})
    endif()
    option(SECSIDH_ENABLE_CTIDH${bits} "Enable CTIDH${bits} parameterset." ${default})
    if(SECSIDH_ENABLE_CTIDH${bits})
        set(SECSIDH_PARAMETER_SETS_CTIDH ${SECSIDH_PARAMETER_SETS_CTIDH} ${bits})
    endif()
endmacro()
SECSIDH_DEFINE_PARAMETERS(2047m1l226 ON)
SECSIDH_DEFINE_PARAMETERS(4095m27l262 ON)
SECSIDH_DEFINE_PARAMETERS(5119m46l244 ON)
SECSIDH_DEFINE_PARAMETERS(6143m59l262 ON)
SECSIDH_DEFINE_PARAMETERS(8191m78l338 ON)
SECSIDH_DEFINE_PARAMETERS(9215m85l389 ON)

# handle counter setting
if(SECSIDH_GLOBAL_COUNTERS)
    add_definitions(-DGLOBAL_COUNTERS=1)
endif()

# Set project code options
# set(CMAKE_C_STANDARD 11)
# set(CMAKE_C_STANDARD 99)
set(CMAKE_C_STANDARD_REQUIRED ON)
set(CMAKE_C_EXTENSIONS OFF)
set(CMAKE_POSITION_INDEPENDENT_CODE ON)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

# Pull in compiler flags
include(.CMake/compiler_options.cmake)

# Set up headers
configure_file(src/secsidhconfig.h.cmake
               ${PROJECT_BINARY_DIR}/include/secsidh/secsidhconfig.h)
execute_process(COMMAND ${CMAKE_COMMAND} -E copy ${CMAKE_SOURCE_DIR}/src/secsidh.h ${CMAKE_BINARY_DIR}/include/secsidh/secsidh.h)
include_directories(${PROJECT_BINARY_DIR}/include)

# Set subdirectory for sources
add_subdirectory(src)

# Set up library
set(SOURCES "src/lib.c")
foreach(bits IN ITEMS ${SECSIDH_PARAMETER_SETS_CTIDH})
    if(SECSIDH_ENABLE_CTIDH${bits})
        set(SOURCES ${SOURCES}
            $<TARGET_OBJECTS:secsidh-ctidh${bits}>
            $<TARGET_OBJECTS:csidh-ctidh${bits}>
            $<TARGET_OBJECTS:ctidh-${bits}>
            $<TARGET_OBJECTS:uint-${bits}>
            $<TARGET_OBJECTS:primes-ctidh${bits}>
            $<TARGET_OBJECTS:fp-${bits}>
            $<TARGET_OBJECTS:poly-ctidh${bits}>
            $<TARGET_OBJECTS:mont-ctidh${bits}>
            $<TARGET_OBJECTS:elligator-ctidh${bits}>
            $<TARGET_OBJECTS:skgen-ctidh${bits}>
            $<TARGET_OBJECTS:validate-ctidh${bits}>
            $<TARGET_OBJECTS:csidh-ctidh${bits}>
            $<TARGET_OBJECTS:steps-ctidh${bits}>
            $<TARGET_OBJECTS:random-ctidh${bits}>
            $<TARGET_OBJECTS:steps_t-ctidh${bits}>
            $<TARGET_OBJECTS:int32_sort>
            $<TARGET_OBJECTS:fips202>
            $<TARGET_OBJECTS:keccakf1600>
        )
        if(SECSIDH_USE_KARATSUBA)
            set(SOURCES ${SOURCES} $<TARGET_OBJECTS:karatsuba_fp_sqr>)
        endif()
    endif()
endforeach()

foreach(bits IN ITEMS ${SECSIDH_PARAMETER_SETS_CSIDH})
    if(SECSIDH_ENABLE_CSIDH${bits})
        set(SOURCES ${SOURCES}
            $<TARGET_OBJECTS:secsidh-csidh${bits}>
            $<TARGET_OBJECTS:csidh-csidh${bits}>
            $<TARGET_OBJECTS:csidh-${bits}>
            $<TARGET_OBJECTS:uint-${bits}>
            $<TARGET_OBJECTS:primes-csidh${bits}>
            $<TARGET_OBJECTS:fp-${bits}>
            $<TARGET_OBJECTS:poly-ctidh${bits}>
            $<TARGET_OBJECTS:mont-ctidh${bits}>
            $<TARGET_OBJECTS:elligator-ctidh${bits}>
            $<TARGET_OBJECTS:skgen-csidh${bits}>
            $<TARGET_OBJECTS:xmul_cofactor-csidh${bits}>
            $<TARGET_OBJECTS:validate-csidh${bits}>
            #$<TARGET_OBJECTS:csidh-ctidh${bits}>
            $<TARGET_OBJECTS:steps-ctidh${bits}>
            $<TARGET_OBJECTS:random-ctidh${bits}>
            $<TARGET_OBJECTS:steps_t-ctidh${bits}>
            $<TARGET_OBJECTS:int32_sort>
            $<TARGET_OBJECTS:fips202>
            $<TARGET_OBJECTS:keccakf1600>
        )
        if(SECSIDH_USE_KARATSUBA)
            set(SOURCES ${SOURCES} $<TARGET_OBJECTS:karatsuba_fp_sqr>)
        endif()
    endif()
endforeach()

# foreach(bits IN ITEMS ${SECSIDH_PARAMETER_SETS_CSIDH})
#     if(SECSIDH_ENABLE_CSIDH${bits})
#         set(SOURCES ${SOURCES}
#             $<TARGET_OBJECTS:secsidh-csidh${bits}>
#             $<TARGET_OBJECTS:fp-${bits}>
#             $<TARGET_OBJECTS:uint-${bits}>
#             $<TARGET_OBJECTS:xmul_cofactor-csidh${bits}>
#             $<TARGET_OBJECTS:mont-csidh${bits}>
#         )
#     endif()
# endforeach()

add_library(secsidh STATIC ${SOURCES})
if(SECSIDH_USE_GMP)
    target_link_libraries(secsidh PUBLIC gmp rng)
else()
   target_link_libraries(secsidh PUBLIC rng)
endif()

enable_testing()
add_subdirectory(test)

# Main executables (XXX: rename to examples)
add_subdirectory(main)

set_target_properties(secsidh
    PROPERTIES
    ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/lib"
    LIBRARY_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/lib"
    VERSION "0.1"
    SOVERSION 0
)

install(TARGETS secsidh
        LIBRARY DESTINATION lib
        ARCHIVE DESTINATION lib
        RUNTIME DESTINATION bin
        INCLUDES DESTINATION include
)

install(FILES
        ${PROJECT_SOURCE_DIR}/src/secsidh.h
        ${PROJECT_BINARY_DIR}/include/secsidh/secsidhconfig.h
        DESTINATION include/secsidh
)
