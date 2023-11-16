# ===================
# CSIDH: Full torsion search
# --------------------------------------------------------------

macro(SECSIDH_FULLTORSIONPOINTS_EXE bits)
	if(SECSIDH_ENABLE_CSIDH${bits})
		# needs to be explicitly targeted to build
		# add_executable(fulltorsion-points-${bits}.main EXCLUDE_FROM_ALL fulltorsion-points.c)
		add_executable(fulltorsion-points-${bits}.main EXCLUDE_FROM_ALL fulltorsion-points.c)

		target_include_directories(
			fulltorsion-points-${bits}.main
			PUBLIC
			${CMAKE_SOURCE_DIR}/src/CTIDH
            ${CMAKE_SOURCE_DIR}/src/common/fp
            ${CMAKE_SOURCE_DIR}/src/common/
            ${CMAKE_SOURCE_DIR}/src/CSIDH/
		)
        target_compile_definitions(fulltorsion-points-${bits}.main PRIVATE BITS=${bits} NAMESPACE_NAME=${bits})
        target_compile_definitions(fulltorsion-points-${bits}.main PRIVATE "P${bits}" "CSIDH")
		# target_link_libraries(fulltorsion-points-${bits}.main
		# 	PUBLIC
        #     elligator-ctidh${bits}

		# 	fp-${bits}
		# 	uint-${bits}
		# )
        target_link_libraries(fulltorsion-points-${bits}.main PUBLIC secsidh)
	endif()
endmacro()

# macro(SECSIDH_CSIDH_EXE bits)
# 	if(SECSIDH_ENABLE_CSIDH${bits})
# 		add_executable(csidh-${bits}.main csidh.c)
# 		if(CMAKE_C_COMPILER_ID MATCHES "Clang")
# 			target_compile_options(csidh-${bits}.main PUBLIC -Wno-language-extension-token)
# 		endif()
# 		set_target_properties(csidh-${bits}.main PROPERTIES C_EXTENSIONS ON)
# 		target_include_directories(
# 			csidh-${bits}.main
# 			PUBLIC
# 			${CMAKE_SOURCE_DIR}/src/CSIDH
#             ${CMAKE_SOURCE_DIR}/src/common/fp
# 		)
# 		target_link_libraries(csidh-${bits}.main PUBLIC secsidh)
# 		target_compile_definitions(csidh-${bits}.main PUBLIC BITS=${bits} NAMESPACE_NAME=${bits})
#         if(SECSIDH_USE_GMP)
#             target_compile_definitions(csidh-${bits}.main PRIVATE "GMP")
#         endif()
#         if(SECSIDH_USE_AVX2)
#             target_compile_definitions(csidh-${bits}.main PRIVATE "AVX2")
#         endif()
# 		add_test(NAME csidh-${bits} COMMAND csidh-${bits}.main)
# 	endif()
# endmacro()

macro(SECSIDH_CSIDH_EXE bits)
	if(SECSIDH_ENABLE_CSIDH${bits})
		add_executable(csidh-${bits}.main csidh.c)
		if(CMAKE_C_COMPILER_ID MATCHES "Clang")
			target_compile_options(csidh-${bits}.main PUBLIC -Wno-language-extension-token)
		endif()
		set_target_properties(csidh-${bits}.main PROPERTIES C_EXTENSIONS ON)
		target_include_directories(
			csidh-${bits}.main
			PUBLIC
			${CMAKE_SOURCE_DIR}/src/CSIDH/.
            ${CMAKE_SOURCE_DIR}/src/common
            ${CMAKE_SOURCE_DIR}/src/common/fp
		)
		target_link_libraries(csidh-${bits}.main PUBLIC secsidh)
        target_compile_definitions(csidh-${bits}.main PRIVATE BITS=${bits} NAMESPACE_NAME=${bits})
        target_compile_definitions(csidh-${bits}.main PRIVATE "P${bits}" "CSIDH")
        if(SECSIDH_USE_GMP)
            target_compile_definitions(csidh-${bits}.main PRIVATE "GMP")
        endif()
        if(SECSIDH_USE_AVX2)
            target_compile_definitions(csidh-${bits}.main PRIVATE "AVX2")
        endif()

		add_test(NAME csidh-${bits} COMMAND csidh-${bits}.main)
	endif()
endmacro()

macro(SECSIDH_CTIDH_EXE bits)
	if(SECSIDH_ENABLE_CTIDH${bits})
		add_executable(ctidh-${bits}.main ctidh.c)
		if(CMAKE_C_COMPILER_ID MATCHES "Clang")
			target_compile_options(ctidh-${bits}.main PUBLIC -Wno-language-extension-token)
		endif()
		set_target_properties(ctidh-${bits}.main PROPERTIES C_EXTENSIONS ON)
		target_include_directories(
			ctidh-${bits}.main
			PUBLIC
			${CMAKE_SOURCE_DIR}/src/CTIDH/.
            # ${CMAKE_SOURCE_DIR}/src/CSIDH/csidh-${bits}
            ${CMAKE_SOURCE_DIR}/src/common
            ${CMAKE_SOURCE_DIR}/src/common/fp
		)
		target_link_libraries(ctidh-${bits}.main PUBLIC secsidh)
        target_compile_definitions(ctidh-${bits}.main PRIVATE BITS=${bits} NAMESPACE_NAME=${bits})
        target_compile_definitions(ctidh-${bits}.main PRIVATE "P${bits}" "CTIDH")
        if(SECSIDH_USE_KARATSUBA)
            target_compile_definitions(ctidh-${bits}.main PRIVATE "KARATSUBA")
        endif()          
        if(SECSIDH_USE_GMP)
            target_compile_definitions(ctidh-${bits}.main PRIVATE "GMP")
        endif()
        if(SECSIDH_USE_AVX2)
            target_compile_definitions(ctidh-${bits}.main PRIVATE "AVX2")
        endif()

		add_test(NAME ctidh-${bits} COMMAND ctidh-${bits}.main)
	endif()
endmacro()


foreach(bits IN ITEMS ${SECSIDH_PARAMETER_SETS_CTIDH})
	SECSIDH_CTIDH_EXE(${bits})

endforeach()

foreach(bits IN ITEMS ${SECSIDH_PARAMETER_SETS_CSIDH})

    SECSIDH_CSIDH_EXE(${bits})

endforeach()

