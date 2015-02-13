// http://programmingpraxis.com/2015/02/10/project-euler-problem-1/

#include <stdio.h>

// standard for loop
int eulerOneOne(int n)
{
    int accumulator = 0;
    for (int i = 1; i < n; i++) {
        if (i % 3 == 0 || i % 5 == 0) {
            accumulator += i;
        }
    }
    return accumulator;
}

// recursive
int eulerOneTwo(int n, int accumulator, int counter)
{
    if (n == 1) {
        return accumulator;
    } else if ((n % 3 == 0 || n % 5 == 0) && counter != 0) {
        return eulerOneTwo(n-1, accumulator+n, counter+1);
    } else {
        return eulerOneTwo(n-1, accumulator, counter+1);
    }
}

// generate and sum multiples of three and five
int eulerOneThree(int n)
{
    int accumulator = 0;
    for (int i = 0; i < n; i += 3) {
        accumulator += i;
    }
    for (int i = 0; i < n; i += 5) {
        if (i % 3 != 0) {
            accumulator += i;
        }
    }
    return accumulator;
}



int main(int argc, const char * argv[]) {
    int resultOne = eulerOneOne(1000);
    int resultTwo = eulerOneTwo(1000,0,0);
    int resultThree = eulerOneThree(1000);
    printf("%d, %d, %d\n", resultOne, resultTwo, resultThree);
    return 0;
}
