//
//  fizzbuzz.m

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {

    for (int i = 1; i < 101; i++) {
        if (i % 15 == 0) {
            NSLog(@"fizzbuzz");
        } else if (i % 5 == 0) {
            NSLog(@"buzz");
        } else if (i % 3 == 0) {
            NSLog(@"fizz");
        } else {
            NSLog(@"%i", i);
        }
    }
    
    return 0;
}