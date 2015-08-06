#!/usr/bin/env swift
// sicp exercise 1.24

import Foundation

// building primitives
func even(n: Int) -> Bool {
  return n % 2 == 0
}

func square(n: Int) -> Int {
  return n * n
}

func random(n: Int) -> Int {
  return Int(arc4random_uniform(UInt32(n)))
}

func currentTime() -> Double {
  return NSDate().timeIntervalSince1970
}

func devNull() {
  return
}

// fermat test and prime functions

func expmod(base: Int, exp: Int, m: Int) -> Int {
  return exp == 0 ? 1 : even(exp) ? (square(expmod(base,(exp/2),m)) % m) : (base * expmod(base,(exp-1),m)) % m
}

func fermatTest(n: Int) -> Bool {
  let a = (random(n-1)+1)
  return expmod(a,n,n) == a
}

func fastPrime(n: Int, t: Int) -> Bool {
  return (t == 0) ? true : fermatTest(n) ? fastPrime(n,t-1) : false
}

func prime(n: Int) -> Bool {
  return fastPrime(n,10)
}

func next(n: Int) -> Int {
  return n == 2 ? 3 : n + 2
}

func timedPrimeTest(n: Int) {
  startPrimeTest(n,currentTime())
}

func startPrimeTest(n: Int, startTime: Double) {
  prime(n) ? reportPrime(n,(currentTime()-startTime)) : devNull()
}

func reportPrime(n: Int, elapsedTime: Double) {
  println("\(n) *** \(elapsedTime)")
}

func searchForPrimes(first: Int, last: Int) {
  even(first) ? searchIter(first+1,last) : searchIter(first,last-1)
}

func searchIter(cur: Int, last: Int) {
  if cur <= last {
    timedPrimeTest(cur)
    searchIter(cur+2,last)
  }
}

println(searchForPrimes(1000,1050))
println(searchForPrimes(10_000,10_050))
println(searchForPrimes(100_000,100_050))
println(searchForPrimes(1_000_000,1_000_050))
println(searchForPrimes(10_000_000,10_000_150))
println(searchForPrimes(1,1_000_000))
