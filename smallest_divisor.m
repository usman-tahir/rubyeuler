#import <Foundation/Foundation.h>
#define square(i) (i * i)
#define divides(a,b) (b % a == 0 ? 1 : 0)
#define smallest_divisor(n) (find_divisor(n,2))
#define prime(n) (smallest_divisor(n) == n ? 0 : 1)

int find_divisor(int n, int t) {
    if (square(t) > n) {
        return n;
    } else if (divides(t,n) == 1) {
        return t;
    } else {
        return find_divisor(n, t+1);
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

