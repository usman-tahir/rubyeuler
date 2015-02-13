// http://rosettacode.org/wiki/Multifactorial

#include <stdio.h>

int multiFactorial(int n, int degree)
{
    if (n <= 1) {
        return 1;
    } else {
        return n * multiFactorial(n-degree, degree);
    }
}

int main(int argc, const char * argv[]) {
    for (int d = 1; d <= 5; d++) {
        for (int n = 1; n <= 10; n++) {
            printf("%d\n", multiFactorial(n, d));
        }
    }
    return 0;
}
