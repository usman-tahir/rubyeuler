// http://rosettacode.org/wiki/Digital_root

#include <stdio.h>

int sumDigits(int n, int counter)
{
    if (n < 10) {
        return n + counter;
    } else {
        counter += (n % 10);
        n /= 10;
        return sumDigits(n, counter);
    }
}

int findRoot(int number)
{
    if (number < 10) {
        return number;
    } else {
        number = sumDigits(number, 0);
        return findRoot(number);
    }
}

int main(int argc, const char * argv[]) {
    int value = findRoot(961038);
    printf("%d\n", value);
    return 0;
}
