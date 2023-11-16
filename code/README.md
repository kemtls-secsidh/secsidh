## Build

- `mkdir -p build`
- `cd build`
- `cmake <Build Options> ..`
- `make`

The following build options are available:

1. GMP: `cmake -DSECSIDH_ARITHMETIC=3 ..`
2. Karatsuba: `cmake -DSECSIDH_ARITHMETIC=4 ..`
3. OpScan: `cmake -DSECSIDH_ARITHMETIC=5 ..`
