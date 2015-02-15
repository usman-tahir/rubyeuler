// find prime numbers from 1-50 in c
#include <stdio.h>

int square(int n)
{
    return n * n;
}

int divides(int x, int y)
{
    if (y % x == 0) {
        return 0;
    } else {
        return 1;
    }
}

int findDivisor(int n, int test)
{
    if (square(test) > n) {
        return n;
    } else if (divides(test,n) == 0) {
        return test;
    } else {
        return findDivisor(n, test+1);
    }
}

int smallestDivisor(int n)
{
    return findDivisor(n, 2);
}

int isPrime(int n)
{
    if (smallestDivisor(n) == n) {
        return 0;
    } else {
        return 1;
    }
}

int main(int argc, const char * argv[]) {
    for (int i = 1; i <= 50; i++) {
        int x = isPrime(i);
        if (x == 0) {
            printf("%d is prime\n", i);
        }
    }
    return 0;
}
