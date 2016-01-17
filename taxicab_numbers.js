#!/usr/bin/env node
// http://programmingpraxis.com/2012/11/09/taxicab-numbers/

function taxicabNumber(n) {
  var cubeRoot = Math.cbrt(n);
  var bases = [];
  for (var i = 1; i < cubeRoot; i++) {
    for (var j = 1; j < cubeRoot; j++) {
      if (Math.pow(i,3) + Math.pow(j,3) === n) {
        if (bases.filter(function(a) { return a != j}).length === bases.length) {
          bases.push(i); bases.push(j);
        }
      }
    }
  }
  return bases.length >= 4;
}

for (var i = 1; i < 70000; i++) {
  if (taxicabNumber(i)) { console.log(i) };
}