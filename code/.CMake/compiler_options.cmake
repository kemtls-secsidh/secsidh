# SET (CMAKE_C_COMPILER "/usr/bin/clang")
# SET (CMAKE_C_COMPILER "/usr/bin/gcc-11")

if(CMAKE_C_COMPILER_ID MATCHES "Clang|GNU")
    add_compile_options(-march=native)
    #add_compile_options(-Werror)
    add_compile_options(-Wall)
    add_compile_options(-Wextra)
    add_compile_options(-Wpedantic)
    add_compile_options(-Wstrict-prototypes)
    add_compile_options(-Wshadow)
    add_compile_options(-std=gnu11)
else()
    message(FATAL_ERROR "Other compilers not supported atm")
endif()

# SET(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -pg")
# SET(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -pg")
# SET(CMAKE_SHARED_LINKER_FLAGS "${CMAKE_SHARED_LINKER_FLAGS} -pg")

if(CMAKE_C_COMPILER_ID MATCHES "Clang")
    add_compile_options(-Wno-language-extension-token)
    add_compile_options(-Wno-unused-command-line-argument)
elseif(CMAKE_C_COMPILER_ID MATCHES "GNU")
    # This causes way too many problems in GCC 11 because we need certain casts
    # to a) handle -Wpedantic that b) erase type information.
    add_compile_options(-Wno-stringop-overflow)
endif()
