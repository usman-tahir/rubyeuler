#!/usr/bin/env node

function decimalToBinary(n) {
  return n === 0 ? 0 : n % 2 + 10 * decimalToBinary(n/2|0);
}

console.log(decimalToBinary(115));
