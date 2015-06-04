#import <Foundation/Foundation.h>

int factorial(int n) {
    return n == 1 ? n : n * factorial(n-1);
}

int binomial_coefficient(int n, int k) {
    return factorial(n) / (factorial(n - k) * factorial(k));
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int a = factorial(5);
        NSLog(@"%d", a);
        int b = binomial_coefficient(5, 3);
        NSLog(@"%d", b);
    }
    return 0;
}
