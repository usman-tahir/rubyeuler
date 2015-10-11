#!/usr/bin/env swift
// http://codekata.com/kata/kata02-karate-chop/

func binarySearchOne(list: [Int], elementToFind: Int, high: Int, low: Int = 0) -> Int? {
  if low >= high {
    return nil
  } else {
    let mid = (low + high) / 2
    if list[mid] > elementToFind {
      return binarySearchOne(list, elementToFind: elementToFind, high: mid-1, low: low)
    } else if list[mid] < elementToFind {
      return binarySearchOne(list, elementToFind: elementToFind, high: high, low: mid+1)
    } else {
      return mid
    }
  }
}

let list = [0,1,4,5,6,7,8,9,12,26,45,67,78,90,98,123,211,234,456,769,865,2345,3215,14345,24324]
let values = [0,42,45,24324,99999]

for v in values { print(binarySearchOne(list, elementToFind: v, high: list.count)) }
