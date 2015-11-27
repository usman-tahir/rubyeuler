#!/usr/bin/env swift
// http://www.codewars.com/kata/find-the-parity-outlier

func findParityOutlier(list: [Int]) -> Int? {
  let firstThree = [list[0] % 2, list[1] % 2, list[2] % 2].reduce(0, combine: +)
  let parity = firstThree < 2 ? 0 : 1
  return list.filter({$0 % 2 != parity}).first
}

let one = [2,4,0,100,4,11,2602,36]
let two = [160,3,17919,19,11,13,-21]
print(findParityOutlier(one))
print(findParityOutlier(two))
