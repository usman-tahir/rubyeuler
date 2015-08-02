#!/usr/bin/env swift
// http://rosettacode.org/wiki/Evaluate_binomial_coefficients

func factorial(n: Int) -> Int {
  return Array(1...n).reduce(1) { $0 * $1 }
}

func binomialCoefficient(n: Int, k: Int) -> Int {
  let numerator = factorial(n)
  let denominator = factorial(n - k) * factorial(k)
  return numerator/denominator
}

println(binomialCoefficient(5,3))
