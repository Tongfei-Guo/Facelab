#include "stdio.h"
double* faceDetect(char *);
int main()
{
    double *p = faceDetect("a.jpg");
    printf("%f", p[0]);
    printf("%f", p[1]);
}
