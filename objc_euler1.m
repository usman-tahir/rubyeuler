// https://projecteuler.net/problem=1
#import <Foundation/Foundation.h>

int sumMultiples(int limit)
{
    int accumulator;
    for (int i = 3; i < limit; i += 3) {
        accumulator += i;
    }
    for (int i = 5; i < limit; i += 5) {
        if (i % 3 != 0) {
            accumulator += i;
        }
    }
    return accumulator;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"%d", sumMultiples(1000));
    }
    return 0;
}
