#!/usr/bin/env node

function even(x) { return x % 2 === 0 }
function square(x) { return x * x }
function fib(x) { return fibIter(1,0,0,1,x) }

function fibIter(a,b,p,q,c) {
  if (c === 0) {
    return b;
  } else if (even(c)) {
    return fibIter(a,b,(square(p) + square(q)),(square(q) + (2*p*q)),(c/2|0));
  } else {
    return fibIter((b*q)+(a*q)+(a*p),((b*p)+(a*q)),p,q,(c-1));
  }
}

for (var i = 1; i <= 20; i++) {
  console.log(fib(i));
}