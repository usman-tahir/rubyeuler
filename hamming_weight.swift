#!/usr/bin/env swift
// http://en.wikipedia.org/wiki/Hamming_weight

func split(n: Int, digits: [Int] = []) -> [Int] {
  var newDigits = digits
  if n < 10 {
    newDigits.append(n)
    return newDigits
  } else {
    newDigits.append(n%10)
    return split(n/10, digits: newDigits)
  }
}

func hammingWeight(n: Int) -> Int {
  return split(n).filter { $0 != 0 }.count
}

let examples = [11101:4, 11101000:4, 0000000:0, 789012340567:10]

for (k,v) in examples { print(hammingWeight(k) == v) }
