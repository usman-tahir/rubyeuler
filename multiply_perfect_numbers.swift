#!/usr/bin/env swift
// http://programmingpraxis.com/2015/09/25/multiply-perfect-numbers/

func slowFindDivisorSum(n: Int) -> Int {
  var accumulator = 0
  for i in 1..<n { if n % i == 0 { accumulator += i } }
  return accumulator
}

func multiplyPerfectNumber(n: Int) -> Int? {
  return (slowFindDivisorSum(n) % n == 0) ? (slowFindDivisorSum(n) / n) : nil
}

for i in 2..<10_000 {
  if let multiplyPerfect = multiplyPerfectNumber(i) {
    print("\(i): \(multiplyPerfect)")
  }
}
