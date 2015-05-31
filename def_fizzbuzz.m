#import <Foundation/Foundation.h>
#define f @"fizz"
#define b @"buzz"
#define fb @"fizzbuzz"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        for (int i = 1; i <= 100; i++) {
            NSString *s = (i % 15 == 0 ? fb : i % 5 == 0 ? b : i % 3 == 0 ? f : [NSString stringWithFormat:@"%d",i]);
            NSLog(@"%@", s);
        }
    }
    return 0;
}
