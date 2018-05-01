#include <iostream>
using namespace std;
extern "C" void print_haha(char *s)
{
    cout << "yes" << endl;
    cout << s;
}
