#!/usr/bin/env swift

func square(n: Int) -> Int {
  return n * n
}

func divides(x: Int, y: Int) -> Bool {
  return y % x == 0
}

func smallestDivisor(n: Int) -> Int {
  return findDivisor(n, t: 2)
}

func findDivisor(n: Int, t: Int) -> Int {
  return square(t) > n ? n : divides(t, y: n) ? t : findDivisor(n, t: t+1)
}

func isPrime(n: Int) -> Bool {
  return smallestDivisor(n) == n
}

for i in 1..<100 { if isPrime(i) { print(i) } }
