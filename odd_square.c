// square without multiplication or exponentiation
#include <stdio.h>

int square(int n)
{
    int result = n;
    for (int i = 1; i < n; i++) {
        result += n;
    }
    return result;
}

int main(int argc, const char * argv[]) {
    printf("%d\n", square(4));
    printf("%d\n", square(3));
    printf("%d\n", square(9));
    return 0;
}
