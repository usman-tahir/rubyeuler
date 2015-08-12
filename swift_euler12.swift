#!/usr/bin/env swift
// https://projecteuler.net/problem=12

import Foundation

func factors(n: Int) -> Int {
  var fctrs: [Int] = []
  let root = Int(sqrt(Double(n)))
  for c in 1...root {
    if n % c == 0 {
      fctrs.append(c)
      fctrs.append(n/c)
    }
  }
  return Set(fctrs).count
}

func generateNthTriangleNumber(nth: Int) -> Int {
  return ((nth * (nth + 1)) / 2)
}

func findTringleNumberWithNDivisors(n: Int) -> Int {
  var i = 1
  while factors(generateNthTriangleNumber(i)) < n { i++ }
  return generateNthTriangleNumber(i)
}

println(findTringleNumberWithNDivisors(500))
