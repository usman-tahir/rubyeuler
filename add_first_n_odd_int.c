#include <stdio.h>

int addOddIntegers(int n, int c, int next, int acc) {
    return (c == n) ? acc : addOddIntegers(n, c+1, next+2, acc+next);
}

int addOddIntWrapper(int n) {
    return addOddIntegers(n, 0, 1, 0);
}

int main(int argc, const char * argv[]) {
    printf("%d\n", addOddIntWrapper(2));
    return 0;
}
