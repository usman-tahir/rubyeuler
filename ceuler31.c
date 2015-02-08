// https://projecteuler.net/problem=31
#include <stdio.h>

int firstDenomination(int kindsOfCoins)
{
    if (kindsOfCoins == 1) {
        return 1;
    } else if (kindsOfCoins == 2) {
        return 2;
    } else if (kindsOfCoins == 3) {
        return 5;
    } else if (kindsOfCoins == 4) {
        return 10;
    } else if (kindsOfCoins == 5) {
        return 20;
    } else if (kindsOfCoins == 6) {
        return 50;
    } else if (kindsOfCoins == 7) {
        return 100;
    } else if (kindsOfCoins == 8) {
        return 200;
    } else {
        return 0;
    }
}

int cc(int amount, int kindsOfCoins)
{
    if (amount == 0) {
        return 1;
    } else if (amount < 0 || kindsOfCoins == 0) {
        return 0;
    } else {
        int valOne = cc(amount,kindsOfCoins-1);
        int denomination = firstDenomination(kindsOfCoins);
        int firstVar = (amount-denomination);
        int valTwo = cc(firstVar,kindsOfCoins);
        return valOne + valTwo;
    }
}

int main(int argc, const char * argv[]) {
    int change = cc(200,8);
    printf("%d\n", change);
    return 0;
}
