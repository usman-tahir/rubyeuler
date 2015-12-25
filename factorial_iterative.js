#!/usr/bin/env node
// factorial iterative

function factorial(n) {
  return factorialIter(1,1,n);
}

function factorialIter(product,counter,max) {
  if (counter > max) {
    return product;
  } else {
    return factorialIter((product*counter),(counter+1),max)
  }
}

console.log(factorial(19))
