#!/usr/bin/env swift

func square(n: Int) -> Int {
  return n * n
}

func divides(x: Int, y: Int) -> Bool {
  return y % x == 0
}

func smallestDivisor(n: Int) -> Int {
  return findDivisor(n,2)
}

func findDivisor(n: Int, t: Int) -> Int {
  if square(t) > n {
    return n
  } else if divides(t, y: n) {
    return t
  } else {
    return findDivisor(n, t: (t+1))
  }
}

func isPrime(n: Int) -> Bool {
  return smallestDivisor(n) == n
}

for i in 1..<50 {
  let x = isPrime(i)
  print("\(i) is prime: \(x)")
}
