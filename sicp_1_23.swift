#!/usr/bin/env swift
// sicp exercise 1.23

import Foundation

// building primitives

func square(n: Int) -> Int {
  return n * n
}

func even(x: Int) -> Bool {
  return x % 2 == 0
}

func currentTime() -> Double {
  return NSDate().timeIntervalSince1970
}

func devNull() {
  return
}

// timed prime test functions

func smallestDiv(n: Int) -> Int {
  return findDiv(n,2)
}

func findDiv(n: Int, t: Int) -> Int {
  return square(t) > n ? n : divides(t,n) ? t : findDiv(n,next(t))
}

func divides(a: Int, b: Int) -> Bool {
  return b % a == 0
}

func prime(n: Int) -> Bool {
  return n == smallestDiv(n)
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
