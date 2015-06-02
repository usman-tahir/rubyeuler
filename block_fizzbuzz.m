#import <Foundation/Foundation.h>
#define f @"fizz"
#define b @"buzz"
#define fb @"fizzbuzz"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableArray *integers = [NSMutableArray array];
        for (int i = 0; i <= 100; i++) {
            [integers addObject:[NSNumber numberWithInt:i]];
        }
        
        [integers enumerateObjectsUsingBlock:
         ^void (id n, NSUInteger i, BOOL *stop) {
             int number = (int)[integers indexOfObject:n];
             if (number == 0) {
                 return;
             } else if (number % 15 == 0) {
                 NSLog(fb);
             } else if (number % 5 == 0) {
                 NSLog(b);
             } else if (number % 3 == 0) {
                 NSLog(f);
             } else {
                 NSLog(@"%d", number);
             }
         }];
    }
    return 0;
}
