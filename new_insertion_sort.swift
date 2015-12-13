#!/usr/bin/env swift
// insertion sort

func insertionSort(list: [Int]) -> [Int] {
  var newList = list
  for i in 1..<list.count {
    let e = newList[i]
    var j = i-1
    while j >= 0 && newList[j] > e {
      newList[j+1] = newList[j]
      j -= 1
    }
    newList[j+1] = e
  }
  return newList
}

let o = [10,8,100,1,637,234,233,235,98,1000,2,5,6]
print(insertionSort(o))
