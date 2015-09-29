#!/usr/bin/env swift
// http://rosettacode.org/wiki/Sorting_algorithms/Insertion_sort

func insertionSort(s: [Int]) -> [Int] {
  var sortable = s
  for i in 1..<s.count {
    let val = sortable[i]
    var j = i - 1
    while j >= 0 && sortable[j] > val {
      sortable[j+1] = sortable[j]
      j--
    }
    sortable[j+1] = val
  }
  return sortable
}

let arrayToSort = [100, 2, 56, 200, -52, 3, 99, 33, 177, -199]
print(insertionSort(arrayToSort))
