# Facelab

Run test cases:
1. make clean
2. make
3. ./facelab.native our_test/compiler_phase/gcd.fb >> our_test/compiler_phase/gcd.ir
4. cd our_test/compiler_phase
5. llc gcd.ir
6. gcc gcd.ir.s -o gcd
