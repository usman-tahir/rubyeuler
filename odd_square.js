#!/usr/bin/env node
// square w/o expt or multiplication

function oddSquare(n) {
  var num = n;
  for (var i = 1; i < n; i++) {
    num += n;
  }
  return num;
}

console.log(oddSquare(4));
console.log(oddSquare(3));
console.log(oddSquare(9));
