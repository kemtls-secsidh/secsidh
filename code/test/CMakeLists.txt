cmake_minimum_required(VERSION 3.5)

# ==================
# tests regarding fp
macro(SECSIDH_FP_TEST bits)
	if(SECSIDH_ENABLE_CTIDH${bits})
		add_executable(fp-${bits}.test fp-test.c)
		# add_executable(fp-${bits}.test EXCLUDE_FROM_ALL fp-test.c)        

		target_include_directories(
			fp-${bits}.test
			PUBLIC
			${CMAKE_SOURCE_DIR}/src/CSIDH
            ${CMAKE_SOURCE_DIR}/src/common/fp
			${CMAKE_SOURCE_DIR}/src/CSIDH/csidh-${bits}
		)
        if(SECSIDH_USE_GMP)
            target_compile_definitions(fp-${bits}.test PRIVATE "GMP")
        endif()
        if(SECSIDH_USE_AVX2)
            target_compile_definitions(fp-${bits}.test PRIVATE "AVX2")
        endif()           
        target_compile_definitions(fp-${bits}.test PUBLIC "NAMESPACE_NAME=${bits}")
        target_compile_definitions(fp-${bits}.test PRIVATE "P${bits}")
		target_link_libraries(fp-${bits}.test PUBLIC uint-${bits} fp-${bits} rng gmp)

		add_test(NAME fp-${bits} COMMAND fp-${bits}.test)
	endif()
endmacro()

# # ========================
# # tests regarding poly-mul
macro(SECSIDH_POLYMUL_TEST bits)
	if(SECSIDH_ENABLE_CSIDH${bits})
		add_executable(poly-mul-${bits}.test poly-mul-test.c)
		target_include_directories(
			poly-mul-${bits}.test
			PUBLIC
			${CMAKE_SOURCE_DIR}/src/CSIDH
            ${CMAKE_SOURCE_DIR}/src/common/fp
			${CMAKE_SOURCE_DIR}/src/CSIDH/csidh-${bits}
		)
        target_compile_definitions(poly-mul-${bits}.test PUBLIC "NAMESPACE_NAME=${bits}")
		target_link_libraries(poly-mul-${bits}.test PUBLIC secsidh-csidh${bits})




		add_test(NAME poly-mul-${bits} COMMAND poly-mul-${bits}.test)
	endif()
endmacro()


# # =========================
# # tests regarding poly-redc

macro(SECSIDH_POLYREDC_TEST bits)
	if(SECSIDH_ENABLE_CSIDH${bits})
		add_executable(poly-redc-${bits}.test poly-redc-test.c)
		target_include_directories(
			poly-redc-${bits}.test
			PUBLIC
			${CMAKE_SOURCE_DIR}/src/CSIDH
            ${CMAKE_SOURCE_DIR}/src/common/fp
			${CMAKE_SOURCE_DIR}/src/CSIDH/csidh-${bits}
		)
        target_compile_definitions(poly-redc-${bits}.test PUBLIC "NAMESPACE_NAME=${bits}")
		target_compile_options(poly-redc-${bits}.test PRIVATE -Wno-shadow)
		target_link_libraries(poly-redc-${bits}.test PUBLIC secsidh-csidh${bits})

		add_test(NAME poly-redc-${bits} COMMAND poly-redc-${bits}.test)
	endif()
endmacro()

# # ===========================================
# # tests regarding Montgomery curve arithmetic
# add_executable(mont.test mont-test.c)
macro(SECSIDH_MONT_TEST bits)
	if(SECSIDH_ENABLE_CSIDH${bits})
		add_executable(mont-${bits}.test mont-test.c)
		target_include_directories(
			mont-${bits}.test
			PUBLIC
			${CMAKE_SOURCE_DIR}/src/CSIDH
            ${CMAKE_SOURCE_DIR}/src/common/fp
			${CMAKE_SOURCE_DIR}/src/CSIDH/csidh-${bits}
		)
        target_compile_definitions(mont-${bits}.test PUBLIC "NAMESPACE_NAME=${bits}")
		target_link_libraries(mont-${bits}.test 
			PUBLIC rng mont-csidh${bits} fp-${bits} uint-${bits} xmul_cofactor-csidh${bits}
		)

		add_test(NAME mont-${bits} COMMAND mont-${bits}.test)
	endif()
endmacro()

# # =========================
# # tests regarding isogenies

macro(SECSIDH_ISOG_TEST bits)
	if(SECSIDH_ENABLE_CSIDH${bits})
		add_executable(isog-${bits}.test isog-test.c)
		target_include_directories(
			isog-${bits}.test
			PUBLIC
			${CMAKE_SOURCE_DIR}/src/CSIDH
            ${CMAKE_SOURCE_DIR}/src/common/fp
			${CMAKE_SOURCE_DIR}/src/CSIDH/csidh-${bits}
		)
		target_link_libraries(isog-${bits}.test PUBLIC secsidh-csidh${bits})

		add_test(NAME isog-${bits} COMMAND isog-${bits}.test)
	endif()
endmacro()

# gae test
macro(SECSIDH_GAE_TEST bits)
	if(SECSIDH_ENABLE_CSIDH${bits})
	  if(${SECSIDH_CSIDH_VARIANT} STREQUAL "df")
            set(variant df)
          elseif(${SECSIDH_CSIDH_VARIANT} STREQUAL "wd1")
            set(variant wd1)
          elseif(${SECSIDH_CSIDH_VARIANT} STREQUAL "wd2")
            set(variant wd2)              
          else()
            message(FATAL_ERROR "Unsupported variant: use df/wd1/wd2")
          endif()
          	if(SECSIDH_USE_RANDOMNESS)
		add_executable(gae-${variant}-${bits}.test gae-with-randomness-test.c)
		else()
		add_executable(gae-${variant}-${bits}.test gae-randomness-free-test.c)
		endif()
		target_include_directories(
			gae-${variant}-${bits}.test
			PUBLIC
			${CMAKE_SOURCE_DIR}/src/CSIDH
            ${CMAKE_SOURCE_DIR}/src/common/fp
			${CMAKE_SOURCE_DIR}/src/CSIDH/csidh-${bits}
			${CMAKE_SOURCE_DIR}/src/CSIDH/csidh-${bits}/${variant}
		)
		target_link_libraries(gae-${variant}-${bits}.test PUBLIC secsidh-csidh${bits})
		target_compile_definitions(gae-${variant}-${bits}.test PUBLIC BITS=${bits} NAMESPACE_NAME=${bits})

		add_test(NAME gae-${variant}-${bits} COMMAND gae-${variant}-${bits}.test)
	endif()
endmacro()


foreach(bits IN ITEMS ${SECSIDH_PARAMETER_SETS_CSIDH})
	SECSIDH_FP_TEST(${bits})
	# SECSIDH_POLYMUL_TEST(${bits})
	# SECSIDH_POLYREDC_TEST(${bits})
	# SECSIDH_MONT_TEST(${bits})
	# SECSIDH_ISOG_TEST(${bits})  # XXX: broken
	# SECSIDH_GAE_TEST(${bits})   # XXX: broken
endforeach()
