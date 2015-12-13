#!/usr/bin/env swift
// selection sort

func selectionSort(list: [Int]) -> [Int] {
  var newList = list
  for i in 0..<newList.count {
    for j in 0..<newList.count {
      if newList[i] < newList[j] {
        let t = newList[i]
        newList[i] = newList[j]
        newList[j] = t
      }
    }
  }
  return newList
}

let o = [10,8,100,1,637,234,233,235,98,1000,2,5,6]
print(selectionSort(o))
