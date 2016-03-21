#!/usr/bin/env node

function evenlyDivUpToTwenty(n) {
    for (var d = 1; d < 21; d++) {
        if (n % d !== 0) { return false; }
    }
    return true;
}

var step = [2,3,5,7,11,13,17,19].reduce(function(a,b) { return a*b; });
var counter = step;

while (true) {
    if (evenlyDivUpToTwenty(counter)) {
        console.log(counter);
        break;
    } else {
        counter += step;
    }
}
