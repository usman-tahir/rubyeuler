#!/usr/bin/env node
// http://programmingpraxis.com/2016/01/08/maximal-prime-gaps/

function sieveOfEratosthones(limit) {
  var primes = Array.apply(null, { length: limit }).map(Number.call, Number)
  primes.splice(0,2);
  for (var i = 0; i < primes.length; i++) {
    for (var j = i+1; j < primes.length; j++) {
      if (primes[j] % primes[i] === 0) {
        primes.splice(j,1)
      }
    }
  }
  return primes;
}

function displayPrimeGaps(limit) {
  var primes = sieveOfEratosthones(limit);
  var gap = primes[1] - primes[0];
  console.log(primes[0] + "     " + gap);
  for (var i = 1; i < primes.length-1; i++) {
    if (primes[i+1] - primes[i] > gap) {
      if (primes[i] > 10000) {
        console.log(primes[i] + " " + (primes[i+1] - primes[i]));
      } else if (primes[i] > 1000) {
        console.log(primes[i] + "  " + (primes[i+1] - primes[i]));
      } else if (primes[i] > 100) {
        console.log(primes[i] + "   " + (primes[i+1] - primes[i]));
      } else if (primes[i] > 10) {
        console.log(primes[i] + "    " + (primes[i+1] - primes[i]));
      } else {
        console.log(primes[i] + "     " + (primes[i+1] - primes[i]));
      }
      gap = primes[i+1] - primes[i];
    }
  } 
}

displayPrimeGaps(100000);
