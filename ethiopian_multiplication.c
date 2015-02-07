#include <stdio.h>

int halve(int n)
{
    return n/2;
}

int twice(int n)
{
    return n + n;
}

int ethiopianMultiplication(int m, int n, int accumulator)
{
    if (m % 2 != 0) {
        accumulator += n;
    }
    if (m == 1) {
        return accumulator;
    } else {
        return ethiopianMultiplication(halve(m), twice(n), accumulator);
    }
        
}

int main(int argc, const char * argv[]) {
    int resultOne = ethiopianMultiplication(17, 34, 0);
    int resultTwo = ethiopianMultiplication(4, 4, 0);
    int resultThree = ethiopianMultiplication(20, 5, 0);
    printf("17 times 34 is %d\n", resultOne);
    printf("4 times 4 is %d\n", resultTwo);
    printf("20 times 5 is %d\n", resultThree);
    return 0;
}
