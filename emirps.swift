#!/usr/bin/env swift
// http://programmingpraxis.com/2010/11/02/emirps/

func seiveOfE(limit: Int) -> [Int] {
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

func emirp(prime: Int, list: [Int]) -> Bool {
  let reversedValue = String(reverse("\(prime)")).toInt()!
  return prime == reversedValue ? false : contains(list,reversedValue)
}

func findEmirpsBelow(n: Int) -> [Int] {
  let primesBelowOneThousand = seiveOfE(n)
  var emirps:[Int] = []
  for prime in primesBelowOneThousand {
    if emirp(prime,primesBelowOneThousand) && prime > 10 {
      emirps.append(prime)
    }
  }
  return emirps
}

let result = findEmirpsBelow(1000)
println(result.count)

