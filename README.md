# Facelab

A simple compiler with a hybrid of C-like and Matlab-like syntax.<br />
(a course project done in class Programming Languages&Translators, offered by Columbia University Fall 2017)

**Authors:**<br />
Kejia Chen<br />
Tongfei Guo<br />
Weiman Sun<br />
Xin Chen<br />

**Acknowledgements:**<br />
1. to Prof. Stephen A. Edwards for his invaluable instructions.<br />
2. to our TA Chang Liu for his helpful advice.<br />

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
1. Some simply plot function write in Facelab plotting a cubic function:<br />
![plot_cubic](https://github.com/Tongfei-Guo/Facelab/blob/master/images/plot.jpg)<br />
2. Apply built-in filter to a bird image:<br />
![plot_cubic](https://github.com/Tongfei-Guo/Facelab/blob/master/images/bird_filter.png)<br />
3. Auto-locate face and draw a square around it:<br />
![face_locate](https://github.com/Tongfei-Guo/Facelab/blob/master/images/face_locate.png)<br />
4. Auto-locate the face of Prof.Edwards, and put a nerd tshirt right below his face.<br />
![draw_square](https://github.com/Tongfei-Guo/Facelab/blob/master/images/photo_combine.png)<br />
