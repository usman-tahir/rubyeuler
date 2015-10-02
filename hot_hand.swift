#!/usr/bin/env swift
// http://programmingpraxis.com/2015/10/02/the-hot-hand/

import Foundation

func random(n: Int) -> Int {
  return Int(arc4random_uniform(UInt32(n)))
}

func fourFlips() -> Int {
  let flips = [random(2), random(2), random(2), random(2)]
  var result = 0
  for i in 1..<flips.count {
    if flips[i-1] == 1 && flips[i] == 1 { result += 1 }
  }
  return result
}

func millionFlips() -> Int {
  var result = 0
  for _ in 1...1_000_000 { result += fourFlips() }
  return result
}

print(millionFlips())
