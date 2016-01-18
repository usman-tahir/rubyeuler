#!/usr/bin/env node
// add first n odd integers

function addOddIntegers(n,counter,next,accumulator) {
  if (counter === n) {
    return accumulator;
  } else {
    console.log(next);
    return addOddIntegers(n,counter+1,next+2,accumulator+next);
  }
}

function addOddIntWrapper(n) {
  return addOddIntegers(n,0,1,0);
}

console.log(addOddIntWrapper(9));
