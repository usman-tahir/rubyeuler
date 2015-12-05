#!/usr/bin/env swift
// http://programmingpraxis.com/2015/12/04/minimum-split/

func minimumSplit(list: [Int]) -> Int {
  var split = 1
  var splitDiff = abs(list[split] - Array(list[split+1..<list.count]).reduce(0) { $0 + $1 })
  for i in 1..<list.count {
    let currentDiff = abs(list[i] - Array(list[i-1..<list.count]).reduce(0) { $0 + $1 })
    if splitDiff > currentDiff {
      split = i
      splitDiff = currentDiff
    }
  }
  return split
}

let list = [3,7,4,2,1]
print(minimumSplit(list))
