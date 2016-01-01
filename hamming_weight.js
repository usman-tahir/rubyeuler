#!/usr/bin/env node
// calculate hamming weight

function hammingWeight(n) {
  return (n + "").split("").filter(function(a) { return a !== "0" }).length;
}

console.log(hammingWeight(11101) === 4);
console.log(hammingWeight(11101000) === 4);
console.log(hammingWeight(000000000) === 0);
console.log(hammingWeight(789012340567) === 10);
