#!/bin/bash
set -e

mkdir -p build
for prime in ${@:-2047d221 4095d221 5119d256 6143d306 8191d306 9215d384 2047n221 4095n221 5119n234 6143n234 8191n332 9215n332}
do
	echo "Generating files regarding CSIDH-${prime}"
    echo "generating the assembly files for ${prime}"
    #python src/fp/AsmMultCodegenerator_PIC.py ${prime} 0 > src/fp/fp${prime}.s
	python src/fp/namespace_asm.py ${prime} src/fp/fp${prime}.s
    #python src/fp/AsmMultCodegenerator_PIC.py ${prime} 1 > src/fp/uint${prime}.s
	python src/fp/namespace_asm.py ${prime} src/fp/uint${prime}.s

	# ======================================== 
	# Using KARATSUBA for the prime field arithmetic
    echo "generating the Karatsuba files for ${prime}"
    #python src/fp/AsmKaratsubaCodegenerator.py ${prime} 0 > src/fp/karatsuba${prime}.s
	python src/fp/namespace_asm.py ${prime} src/fp/karatsuba${prime}.s
	echo
done

