// recursively sum an array in c

#include <stdio.h>

int recursum(int array[], int i, int accumulator)
{
    if (i < 0) {
        return accumulator;
    } else {
        accumulator += array[i];
    }
    return recursum(array, --i, accumulator);
}

int main(int argc, const char * argv[]) {
    int numbers[] = {1,2,3,4,5};
    int result = recursum(numbers, 4, 0);
    printf("%d\n", result);
    return 0;
}
