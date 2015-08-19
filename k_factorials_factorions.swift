#!/usr/bin/env swift
// http://programmingpraxis.com/2015/08/18/k-factorials-and-factorions/

func factorial(n: Int) -> Int {
  return n == 0 || n == 1 ? 1 : n * factorial(n-1)
}

func split(n: Int, digits: [Int] = []) -> [Int] {
  var tempDigits = digits
  if n < 10 {
    tempDigits.append(n)
    return tempDigits
  } else {
    tempDigits.append(n%10)
    return split(n/10, digits: tempDigits)
  }
}

func factorion(n: Int) -> Bool {
  return (split(n).map { factorial($0) }.reduce(0) { $0 + $1 }) == n
}

println(factorion(145))
println(factorion(5087))
println(factorion(40585))
