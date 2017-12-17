#include "stdio.h"
double* load_cpp(char *);
int main()
{
    double *p = load_cpp("a.jpg");
    printf("%f", p[0]);
    printf("%f", p[1]);
}
