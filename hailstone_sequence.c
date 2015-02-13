// http://rosettacode.org/wiki/Hailstone_sequence
#include <stdio.h>

int hailstoneNext(int number)
{
    if (number == 1) {
        return 1;
    } else if (number % 2 == 0) {
        int value = number/2;
        return value;
    } else if (number % 2 != 0) {
        int value = (3 * number) + 1;
        return value;
    }
    return 0;
}

void hailstoneSequence(int number)
{
    int value = number;
    while (value != 1) {
        printf("%d\n", value);
        value = hailstoneNext(value);
    }
    printf("%d\n", value);
}

int main(int argc, const char * argv[]) {
    hailstoneSequence(27);
    return 0;
}
