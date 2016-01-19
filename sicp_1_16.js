#!/usr/bin/env node

function square(x) { return x * x };
function even(x) { return x % 2 === 0 };

function fastExpt(b,n) {
  return fastExptIter(b,n,1);
}

function fastExptIter(b,counter,product) {
  return counter === 0 ? product : even(counter) ? 
    fastExptIter(square(b),counter/2|0,product) :
    fastExptIter(b,counter-1,b*product);
}

console.log(fastExpt(3,2));
console.log(fastExpt(3,3));
console.log(fastExpt(9,2));