// sicp 1.16 in c

#include <stdio.h>

int square(int n)
{
    return n * n;
}

int even(int x)
{
    if (x % 2 == 0) {
        return 0;
    } else {
        return 1;
    }
}

int fastExptIter(int b, int counter, int product)
{
    if (counter == 0) {
        return product;
    } else if (even(counter) == 0) {
        int newB = square(b);
        int newCounter = counter / 2;
        int value = fastExptIter(newB, newCounter, product);
        return value;
    } else {
        int newCounter = counter - 1;
        int newProduct = b * product;
        int value = fastExptIter(b, newCounter, newProduct);
        return value;
    }
}

int fastExpt(int b, int n)
{
    return fastExptIter(b, n, 1);
}

int main(int argc, const char * argv[]) {
    int valueOne = fastExpt(3,2);
    int valueTwo = fastExpt(3,3);
    printf("%d, %d\n", valueOne, valueTwo);
    return 0;
}
