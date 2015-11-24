#!/usr/bin/env node
// https://projecteuler.net/problem=14

var collatz = function(n,f) { return f(n) }

var collatzify = function(n) {
  var even = function(x) { return x/2 };
  var odd = function(x) { return 3 * x + 1 }
  var t = n
  var counter = 1
  while (t != 1) {
    t = t % 2 === 0 ? collatz(t,even) : collatz(t,odd)
    counter++
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