#include <stdio.h>

int square(int n) {
    return n * n;
}

int squareTwoLargestInt(int one, int two, int three) {
    int numbers[3] = {one, two, three};
    int smallestIndex = 0;
    for (int i = 1; i < 3; i++) {
        if (numbers[i] < numbers[smallestIndex]) {
            smallestIndex = i;
        }
    }
    int accumulator = 0;
    for (int i = 0; i < 3; i++) {
        accumulator += i == smallestIndex ? 0 : square(numbers[i]);
    }
    return accumulator;
}



int main(int argc, const char * argv[]) {
    printf("%d\n", squareTwoLargestInt(1,2,3));
    return 0;
}
