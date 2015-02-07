// https://projecteuler.net/problem=2

#include <stdio.h>

int fibo(int nth)
{
    if (nth == 1) {
        return 1;
    } else if (nth == 2) {
        return 1;
    } else {
        return fibo(nth-1) + fibo(nth-2);
    }
}

int main(int argc, const char * argv[]) {
    int counter = 1;
    int accumulator = 0;
    int val = fibo(counter);
    while (val < 4000000) {
        if (val % 2 == 0) {
            accumulator += val;
        }
        counter++;
        val = fibo(counter);
    }
    printf("%d\n", accumulator);
    return 0;
}
