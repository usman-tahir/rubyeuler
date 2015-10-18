#!/usr/bin/env swift
// http://www.codewars.com/kata/always-perfect

import Foundation

func alwaysPerfect(n: [Int]) -> (Int,Int) {
  let square = n.reduce(1, combine: *) + 1
  return (square, Int(sqrt(Double(square))))
}

func alwaysPerfectWrapper(n: String) -> (Int,Int)? {
  let ints = n.characters.split() { $0 == "," }.map { Int(String($0)) }
  for i in 0..<(ints.count-1) {
    if let first = ints[i] {
      if let second = ints[i+1] {
        if first + 1 != second {
          print("not consecutive")
          return nil
        }
      }
    } else {
      print("incorrect input")
      return nil
    }
  }
  return alwaysPerfect(ints.map {$0!})
}

print(alwaysPerfectWrapper("1,2,3,4"))
