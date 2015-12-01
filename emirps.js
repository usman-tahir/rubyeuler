#!/usr/bin/env node
// http://programmingpraxis.com/2010/11/02/emirps/

function sieveOfEratosthenes(limit) {
  var primes = [];
  for (var n = 2; n < limit; n++) { primes.push(n) }
  for (var i = 0; i < primes.length; i++) {
    for (var j = i+1; j < primes.length; j++) {
      if (primes[j] % primes[i] === 0) { primes.splice(j,1) }
    }
  }
  return primes
}

function reverseNumber(n) {
  return +n.toString().split('').reverse().join('')
}

function findEmirpsBelow(limit) {
  var primes = sieveOfEratosthenes(limit)
  var emirps = []
  for (var i in primes) {
    var emirp = reverseNumber(primes[i])
    if (primes.indexOf(emirp) !== -1 && emirp > 10) {
      emirps.push(primes[i])
    }
  }
  return emirps
}

console.log(findEmirpsBelow(100))
