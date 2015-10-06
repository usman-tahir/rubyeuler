#import <Foundation/Foundation.h>

int flip() {
    return arc4random() % 2;
}

int fourFlips() {
    int flips[4] = { flip(), flip(), flip(), flip() };
    int result = 0;
    for (int i = 1; i < 4; i++) {
        if (flips[i-1] == 0 && flips[i] == 0) {
            result++;
        }
    }
    return result;
}

int millionFlips() {
    int result = 0;
    for (int i = 1; i <= 1000000; i++) {
        result += fourFlips();
    }
    return result;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        printf("%d\n", millionFlips());
    }
    return 0;
}
