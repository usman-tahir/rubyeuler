#!/usr/bin/env swift
// http://programmingpraxis.com/2015/12/18/two-part-interview-question/

func findFirstNonrepeated(list: [Int]) -> Int? {
  for l in list {
    if list.filter({ $0 == l}).count == 1 { return l }
  }
  return nil
}

func findFirstEvenRepeat(list: [Int]) -> Int? {
  for l in list {
    if list.filter({ $0 == l}).count % 2 == 0 { return l }
  }
  return nil
}

let first =  [3, 5, 3, 2, 1]
let second = [5, 3, 5, 1, 5, 1, 3]

print(findFirstNonrepeated(first))
print(findFirstEvenRepeat(second))
