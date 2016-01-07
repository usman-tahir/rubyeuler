#!/usr/bin/env node
// http://programmingpraxis.com/2016/01/01/happy-new-year-2/

function nthTriangularNumber(n) {
  return (n * (n + 1)) / 2;
}

console.log(nthTriangularNumber(63));
