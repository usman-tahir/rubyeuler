// find deficient, perfect, and abundant numbers in c

#include <stdio.h>

int countDivisors(int n)
{
    int accumulator = 0;
    for (int i = 1; i < n; i++) {
        if (n % i == 0) {
            accumulator += i;
        }
    }
    return accumulator;
}

int classify(int n)
{
    if (countDivisors(n) < n) {
        return -1;
    } else if (countDivisors(n) == n) {
        return 0;
    } else if (countDivisors(n) > n) {
        return 1;
    } else {
        return 5;
    }
}

int main(int argc, const char * argv[]) {
    int deficients = 0;
    int abundants = 0;
    int perfects = 0;
    for (int i = 1; i <= 20000; i++) {
        if (classify(i) == -1) {
            deficients++;
        } else if (classify(i) == 0) {
            perfects++;
        } else if (classify(i) == 1) {
            abundants++;
        } else {
            continue;
        }
    }
    printf("deficients: %d\n", deficients);
    printf("perfects: %d\n", perfects);
    printf("abundants: %d\n", abundants);
    return 0;
}
