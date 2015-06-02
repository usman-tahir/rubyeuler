#import <Foundation/Foundation.h>

int square(int n) {
    return n * n;
}

int divides(int a, int b) {
    if (b % a == 0) {
        return 1;
    } else {
        return 0;
    }
}

int find_divisor(int n, int t) {
    if (square(t) > n) {
        return n;
    } else if (divides(t,n) == 1) {
        return t;
    } else {
        return find_divisor(n, t+1);
    }
}

int smallest_divisor(int n) {
    return find_divisor(n,2);
}

int prime(int n) {
    if (smallest_divisor(n) == n) {
        return 1;
    } else {
        return 0;
    }
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        for (int i = 1; i <= 50; i++) {
            if (prime(i) == 1) {
                NSLog(@"%d is prime", i);
            } else {
                NSLog(@"%d is not prime", i);
            }
        }
    }
    return 0;
}
