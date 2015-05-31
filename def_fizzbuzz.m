#import <Foundation/Foundation.h>
#define f @"fizz"
#define b @"buzz"
#define fb @"fizzbuzz"
#define n(i) ([NSString stringWithFormat:@"%d",i])
#define fizzbuzz(i) (i % 15 == 0 ? fb : i % 5 == 0 ? b : i % 3 == 0 ? f : n(i))

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        for (int i = 1; i <= 100; i++) {
            NSLog(@"%@", fizzbuzz(i));
        }
    }
    return 0;
}
