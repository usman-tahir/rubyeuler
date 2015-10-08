// http://programmingpraxis.com/2015/10/06/the-iron-bar/

#import <Foundation/Foundation.h>

int ironBarMedian(NSArray *n) {
    int median = [[n objectAtIndex:0] integerValue];
    for (int i = 1; i < [n count]; i++) {
        median += [n[i] integerValue] > median ? 1 : [n[i] integerValue] < median ? -1 : 0;
    }
    return median;
}

int actualMedian(NSArray *n) {
    int medianIndex = (int)([n count] / 2) - 1;
    return [[[n sortedArrayUsingSelector:@selector(compare:)] objectAtIndex:medianIndex] integerValue];
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSArray *list = @[@29, @26, @31, @30, @30, @28, @28, @31, @24, @32];
        NSLog(@"iron bar median is: %d", ironBarMedian(list));
        NSLog(@"actual median is: %d", actualMedian(list));    
    }
    return 0;
}
