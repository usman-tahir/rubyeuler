#import <Foundation/Foundation.h>

NSMutableArray* findFactors(int n)
{
    NSMutableArray *factors = [NSMutableArray array];
    for (int factor = 2; factor < n; factor++) {
        if (n % factor == 0) {
            NSLog(@"%d", factor);
            [factors addObject:[NSNumber numberWithInt:factor]];
        }
    }
    return factors;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"%@", findFactors(27));
    }
    return 0;
}
