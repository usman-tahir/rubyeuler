#!/usr/bin/env swift
// sicp exercise 1.22

import Foundation

func square(x: Int) -> Int {
  return x * x
}

func smallestDivisor(x: Int) -> Int {
  return findDivisor(x, t: 2)
}

func findDivisor(n: Int, t: Int) -> Int {
  return square(t) > n ? n : divides(t, y: n) ? t : findDivisor(n, t: t+1)
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
  startPrimeTest(n, startTime: currentTime())
}

func startPrimeTest(n: Int, startTime: Double) {
  prime(n) ? reportPrime(n, elapsedTime: (currentTime() - startTime)) : devNull()
}

func devNull() {
  return
}

func reportPrime(n: Int, elapsedTime: Double) {
  print("\(n) *** \(elapsedTime)")
}

func searchForPrimes(first: Int, last: Int) {
  even(first) ? searchIter(first+1, last: last) : searchIter(first, last: last-1)
}

func searchIter(cur: Int, last: Int) {
  if cur <= last {
    timedPrimeTest(cur)
    searchIter(cur+2, last: last)
  }
}

print(searchForPrimes(1000, last: 1050))
print(searchForPrimes(10_000, last: 10_050))
print(searchForPrimes(100_000, last: 100_050))
print(searchForPrimes(1_000_000, last: 1_000_050))
print(searchForPrimes(10_000_000, last: 10_000_150))
