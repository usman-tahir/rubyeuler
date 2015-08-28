#!/usr/bin/env swift
// http://programmingpraxis.com/2015/08/28/maximum-product-of-two-primes-less-than-n/

func sieveOfE(limit: Int) -> [Int] {
  var primes = Array(2...limit)
  for var i = 0; i < primes.count; i++ {
    for var j = i+1; j < primes.count; j++ {
      if primes[j] % primes[i] == 0 {
        primes.removeAtIndex(j)
      }
    }
  }
  return primes
}

func findMaxPrimeProduct(n: Int) -> (multiplicand: Int, multiplier: Int, product: Int) {
  let primes = sieveOfE(n)
  var maximumMultAndProduct = (multiplicand: primes[0], multiplier: primes[0], product: (primes[0] * primes[0]))
  for firstPrime in primes {
    for secondPrime in primes {
      if firstPrime * secondPrime < n && firstPrime * secondPrime > maximumMultAndProduct.product {
        maximumMultAndProduct = (multiplicand: firstPrime, multiplier: secondPrime, product: (firstPrime * secondPrime))
      }
    }
  }
  return maximumMultAndProduct
}

for n in [27,50] {
  let result = findMaxPrimeProduct(n)
  println(result.multiplicand)
  println(result.multiplier)
  println(result.product)
}
