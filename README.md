# Facelab

Run test cases:
1. eval `opam config env`
2. export PATH=$PATH:/usr/local/opt/llvm/bin
3. make clean
4. make
5. ./facelab.native our_test/compiler_phase/gcd.fb >> our_test/compiler_phase/gcd.ir
6. cd our_test/compiler_phase
7. llc gcd.ir
8. gcc gcd.ir.s -o gcd
