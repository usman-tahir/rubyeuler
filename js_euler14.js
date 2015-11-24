#!/usr/bin/env node
// https://projecteuler.net/problem=14

var collatzFunction = function (n) {
  if (n === "even") {
    return function (a) {
      return a/2;
    }
  } else if (n === "odd") {
    return function (a) {
      return 3 * a + 1
    }
  }
}

var collatzify = function (n) {
  var temp = n
  var counter = 1
  while (temp != 1) {
    if (temp % 2 === 0) {
      temp = collatzFunction("even")(temp)
    } else {
      temp = collatzFunction("odd")(temp)
    }
    counter++;
  }
  return counter
}

var counter = 2
var sequences = {}
for (counter; counter < 1000000; counter++) {
  collatizified = collatzify(counter)
  sequences[collatizified] = counter
}

var keys = Object.keys(sequences);
var largest = Math.max.apply(Math, keys);
console.log(sequences[largest])