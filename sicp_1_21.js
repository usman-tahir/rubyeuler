#!/usr/bin/env node

function square(x) { return x * x }
function smallestDivisor(x) { return findDivisor(x,2) }
function divides(x,y) { return y % x === 0 }

function findDivisor(n,testDivisor) {
  if (square(testDivisor) > n) {
    return n;
  } else if (divides(testDivisor,n)) {
    return testDivisor;
  } else {
    return findDivisor(n,(testDivisor+1));
  }
}

function prime(x) { return smallestDivisor(x) === x };

console.log(smallestDivisor(199));
console.log(smallestDivisor(1999));
console.log(smallestDivisor(19999));

for (var i = 2; i <= 100; i++) {
  if (prime(i)) { console.log(i) };
}