# Facelab

A simple compiler with a hybrid of C-like and Matlab-like syntax.<br />
(a course project done in class Programming Languages&Translators, offered by Columbia University Fall 2017)

**Authors:**<br />
Kejia Chen<br />
Tongfei Guo<br />
Weiman Sun<br />
Xin Chen<br />

**Documentations & Tutorials:**<br />
There is currently no official documentations or tutorials. Syntax, semantics and sample codes are described in detail in documentations/report. There are plenty of test codes in test/ if interested.

**How to use:**

You need to install LLVM and openCV first.

Use Compiler:
1. Download source folder.
2. make
3. modify "compile" as following: (i). change llc-5.0 to your corresponding llc (ii) change clang++-4.0 to your corresponding c++ compiler
4. use command "./compile filename" to compile exe, for example, in the demo/ folder, there is a Facelab source code "tshirt.fb", then you can do "./compile tshirt" to compile and get executable "tshirt"

**demo:**
