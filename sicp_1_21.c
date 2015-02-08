// sicp 1_21 in c

#include <stdio.h>

int square(int number)
{
    return number * number;
}

int divides(int a, int b)
{
    int booool = b % a;
    if (booool == 0) {
        return 0;
    } else {
        return 1;
    }
}

int findDivisor(int number, int testDivisor)
{
    if (square(testDivisor) > number) {
        return number;
    } else if (divides(testDivisor, number) == 0) {
        return testDivisor;
    } else {
        int varTwo = testDivisor + 1;
        int value = findDivisor(number, varTwo);
        return value;
    }
}

int smallestDivisor(int x)
{
    int value = findDivisor(x, 2);
    return value;
}

int prime(int n)
{
    int value = smallestDivisor(n);
    if (value == n) {
        return 0;
    } else {
        return 1;
    }
}

int main(int argc, const char * argv[]) {
    int a = smallestDivisor(199);
    int b = smallestDivisor(1999);
    int c = smallestDivisor(19999);
    printf("%d, %d, %d\n", a, b, c);
    return 0;
}
