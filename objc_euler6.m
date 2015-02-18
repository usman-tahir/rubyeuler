// https://projecteuler.net/problem=6
#import <Foundation/Foundation.h>

int square(int n)
{
    return n * n;
}

int sumSquares(int limit)
{
    int accumulator = 0;
    for (int i = 1; i <= limit; i++) {
        accumulator += square(i);
    }
    return accumulator;
}

int squareSums(int limit)
{
    int accumulator = 0;
    for (int i = 1; i <= limit; i++) {
        accumulator += i;
    }
    return square(accumulator);
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"%d", (squareSums(100) - sumSquares(100)));
    }
    return 0;
}
