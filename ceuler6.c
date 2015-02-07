// https://projecteuler.net/problem=6

#include <stdio.h>

int square(int n)
{
    return n * n;
}

int sumSquares(int limit)
{
    int accumulator = 0;
    for (int counter = 1; counter <= limit; counter++) {
        accumulator = accumulator + square(counter);
    }
    return accumulator;
}

int squareSums(int limit)
{
    int accumulator = 0;
    for (int counter = 1; counter <= limit; counter++) {
        accumulator += counter;
    }
    return square(accumulator);
}

int main(int argc, const char * argv[]) {
    int limit = 100;
    int result = squareSums(limit) - sumSquares(limit);
    printf("%d\n", result);
}
