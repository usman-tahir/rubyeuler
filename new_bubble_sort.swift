#!/usr/bin/env swift
// bubble sort

func bubbleSort(list: [Int]) -> [Int] {
  var newList = list
  var sorted = false
  while !sorted {
    sorted = true
    for i in 1..<newList.count {
      if newList[i-1] > newList[i] {
        let temp = newList[i]
        newList[i] = newList[i-1]
        newList[i-1] = temp
        sorted = false
      }
    }
  }
  return newList
}

let o = [10,8,100,1,637,234,233,235,98,1000,2,5,6]
print(bubbleSort(o))
