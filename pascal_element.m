#import <Foundation/Foundation.h>

int pascal_element(int row, int col) {
    return (col == 0) ? 1 : (col == row) ? 1 : (pascal_element(row-1, col-1) + pascal_element(row-1, col));
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"%d\n", pascal_element(0, 0));
        NSLog(@"%d\n", pascal_element(1, 0));
        NSLog(@"%d\n", pascal_element(4, 2));
    }
    return 0;
}
