#!/usr/bin/env swift
// http://programmingpraxis.com/2015/09/04/reversing-digits/

import Foundation

func reverseDigitsTimingTestWrapper(n: Int, proc: (Int, Int) -> (Int)) -> (Double,Int) {
  let startTime = NSDate()
  let reversedN = proc(n,0)
  let runTime = NSDate().timeIntervalSinceDate(startTime)
  return (runTime,reversedN)
}

func reverseDigitsRecursive(n: Int, r: Int=0) -> (Int) {
  return n == 0 ? r : reverseDigitsRecursive(n/10, r: (r*10 + n%10))
}

func reverseDigitsIterative(n: Int, r: Int=0) -> (Int) {
  var digits: [Int] = []
  var newN = n
  while newN > 0 {
    digits.insert(newN%10, atIndex:0)
    newN = newN/10
  }
  for i in 0..<digits.count {
    digits[i] = digits[i] * (power(10,i))
  }
  return digits.reduce(0) { $0 + $1 }
}

func power(base: Int, exp: Int) -> Int {
  return Int(pow(Double(base),Double(exp)))
}

func reverseDigitsToString(n: Int, r: Int=0) -> (Int) {
  let a = String(reverse(String(n))).toInt()!
  return a
}

let n = 7851012380543123
let results = [
  ("reverseDigitsRecursive: (time,result)",reverseDigitsTimingTestWrapper(n,reverseDigitsRecursive)),
  ("reverseDigitsIterative: (time,result)",reverseDigitsTimingTestWrapper(n,reverseDigitsIterative)),
  ("reverseDigitsToString: (time,result)",reverseDigitsTimingTestWrapper(n,reverseDigitsToString))
]

for result in results { println(result) }
