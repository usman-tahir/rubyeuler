#!/usr/bin/env swift
// http://rosettacode.org/wiki/Sorting_algorithms/Selection_sort

func mySwap(a: Int, b: Int) -> (Int, Int) {
  return (b, a)
}

func selectionSort(arrayToSort:[Int]) -> [Int] {
  var mutableArray = arrayToSort
  for i in 0..<mutableArray.count {
    for j in i..<mutableArray.count {
      if mutableArray[j] < mutableArray[i] {
        (mutableArray[j], mutableArray[i]) = mySwap(mutableArray[j], b: mutableArray[i])
      }
    }
  }
  return mutableArray
}

let t1 = [26, 45, 4, 98, 769, 234, 24324, 78, 865, 0, 6, 123, 7, 14345, 5, 12, 211, 1, 3215, 67, 8, 90, 9, 2345, 456]
let t2 = [7,3,1,5,10,0,4]

print(selectionSort(t1))
print(selectionSort(t2))
