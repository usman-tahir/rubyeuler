#!/usr/bin/env swift
// sicp exercise 1.22

import Foundation

func square(x: Int) -> Int {
  return x * x
}

func smallestDivisor(x: Int) -> Int {
  return findDivisor(x,2)
}

func findDivisor(n: Int, t: Int) -> Int {
  return square(t) > n ? n : divides(t,n) ? t : findDivisor(n,t+1)
}

func divides(x: Int, y: Int) -> Bool {
  return y % x == 0
}

func prime(x: Int) -> Bool {
  return x == smallestDivisor(x)
}

func even(x: Int) -> Bool {
  return x % 2 == 0
}

func currentTime() -> Double {
  return NSDate().timeIntervalSince1970
}

func timedPrimeTest(n: Int) {
  startPrimeTest(n,currentTime())
}

func startPrimeTest(n: Int, startTime: Double) {
  prime(n) ? reportPrime(n,(currentTime() - startTime)) : devNull()
}

func devNull() {
  return
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
