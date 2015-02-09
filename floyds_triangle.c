// http://rosettacode.org/wiki/Floyd%27s_triangle

#include <stdio.h>

void floyds(int rows)
{
    int n = 1;
    for (int row = 1; row <= rows; row++) {
        for (int counter = 1; counter <= row; counter++) {
            if (n >= 100) {
                printf("%d ", n);
            } else if (n >= 10) {
                printf(" %d ", n);
            } else {
                printf("  %d ", n);
            }
            n++;
        }
        printf("\n");
    }
    printf("\n");
}

int main(int argc, const char * argv[]) {
    floyds(5);
    floyds(14);
    return 0;
}
