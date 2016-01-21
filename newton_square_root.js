#!/usr/bin/env node
// newton's method for finding square roots

function square(x) { return x * x }

function sqrt(x) { return sqrtIter(1.0,x) }

function sqrtIter(guess,x) {
  if (goodEnough(guess,x)) {
    return guess;
  } else {
    return sqrtIter(improveGuess(guess,x),x);
  }
}

function improveGuess(guess,x) {
  return average(guess,x/guess)
}

function average(x,y) { return (x+y)/2 }

function goodEnough(guess,x) {
  return absolute(square(guess) - x) < 0.01
}

function absolute(x) {
  return x >= 0 ? x : -x;
}

console.log(sqrt(9));
console.log(sqrt(100+37));
console.log(sqrt(sqrt(2) + sqrt(3)));
console.log(square(sqrt(1000)));
