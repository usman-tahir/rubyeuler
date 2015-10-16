#!/usr/bin/env swift
// http://programmingpraxis.com/2015/10/16/largest-possible-remainder/

func largestPossibleRemainder(n: Int, rangeMax: Int) -> (divisor: Int, remainder: Int) {
  var divisorWithLargestRemainder = 1
  for d in (2..<rangeMax){
    if n % d > n % divisorWithLargestRemainder {
      divisorWithLargestRemainder = d
    }
  }
  return (divisor: divisorWithLargestRemainder, remainder: n % divisorWithLargestRemainder)
}

print(largestPossibleRemainder(20, rangeMax: 10))
