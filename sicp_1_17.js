#!/usr/bin/env node

function fastMulti(x,y) {
  return multiIter(x,y,0);
}

function even(x) { return x % 2 === 0 }
function dbl(x) { return x + x }

function multiIter(x,y,counter) {
  return y === 0 ? counter : even(y) ? 
    multiIter(dbl(x),y/2|0,counter) :
    multiIter(x,y-1,counter+x);
}

console.log(fastMulti(5,5));
console.log(fastMulti(7,9));
