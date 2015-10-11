// http://codekata.com/kata/kata02-karate-chop/
#include <stdio.h>

int binarySearchOne(int element, int list[], int low, int high) {
    if (low > high) {
        return -1;
    }
    int mid = ((low + high) / 2);
    if (element > list[mid]) {
        return binarySearchOne(element, list, mid+1, high);
    } else if (element < list[mid]) {
        return binarySearchOne(element, list, low, mid-1);
    } else {
        return mid;
    }
}

int main(int argc, const char * argv[]) {
    int list[25] = { 0,1,4,5,6,7,8,9,12,26,45,67,78,90,98,123,211,234,456,769,865,2345,3215,14345,24324 };
    int values[5] = { 0,42,45,24324,99999 };
    for (int i = 0; i < 5; i++) {
        printf("%d is at index %d\n", values[i], binarySearchOne(values[i], list, 0, 24));
    }
    return 0;
}
