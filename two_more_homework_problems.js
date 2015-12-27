#!/usr/bin/env node
// http://programmingpraxis.com/2015/08/04/three-homework-problems/

function sumOfSquaresOfTwoLargestInts(a,b,c) {
  if (a > b) {
    if (b > c) {
      return (a * a) + (b * b);
    } else {
      return (a * a) + (c * c);
    }
  } else {
    if (a > c) {
      return (a * a) + (b * b);
    } else {
      return (b * b) + (c * c);
    }
  }
}

console.log(sumOfSquaresOfTwoLargestInts(1,2,3));
console.log(sumOfSquaresOfTwoLargestInts(3,2,1));
console.log(sumOfSquaresOfTwoLargestInts(1,3,2));
console.log(sumOfSquaresOfTwoLargestInts(2,1,3));
console.log(sumOfSquaresOfTwoLargestInts(3,1,2));

function isBase10Palindrome(n) {
  return String(n).split("").join() == String(n).split("").reverse().join();
}

console.log(isBase10Palindrome(12345));
console.log(isBase10Palindrome(121));
