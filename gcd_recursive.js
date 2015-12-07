#!/usr/bin/env node
// http://rosettacode.org/wiki/Greatest_common_divisor

function gcdRecursive(a, b) {
  return b == 0 ? a : gcdRecursive(b, (a % b))
}

console.log(gcdRecursive(36, 33))
console.log(gcdRecursive(36, 16))
console.log(gcdRecursive(8, 24))