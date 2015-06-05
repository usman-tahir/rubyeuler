#import <Foundation/Foundation.h>

int decToBinary(int n) {
    return n == 0 ? 0 : n % 2 + 10 * decToBinary(n/2);
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"%d", decToBinary(115));
    }
    return 0;
}
