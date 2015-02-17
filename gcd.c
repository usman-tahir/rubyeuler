// find greatest common div of two ints recursively


#include <stdio.h>

int gcd(int a, int b)
{
    if (b == 0) {
        return a;
    } else {
        return gcd(b,(a%b));
    }
}

int main(int argc, const char * argv[]) {
    printf("%d\n", gcd(8,24));
    printf("%d\n", gcd(36,33));
    printf("%d\n", gcd(36, 16));
    return 0;
}
