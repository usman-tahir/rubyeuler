// https://projecteuler.net/problem=2
#import <Foundation/Foundation.h>

int fibo(int term)
{
    if (term == 1) {
        return 1;
    } else if (term == 2) {
        return 2;
    } else {
        return (fibo(term-1) + fibo(term-2));
    }
}

int evenFiboSum(int limit)
{
    int accumulator;
    int i;
    while (fibo(i) < limit) {
        if (fibo(i) % 2 == 0) {
            accumulator += fibo(i);
        }
        i++;
    }
    return accumulator;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"%d", evenFiboSum(4000000));
    }
    return 0;
}
