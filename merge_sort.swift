#!/usr/bin/env swift
// http://rosettacode.org/wiki/Sorting_algorithms/Merge_sort

func mergeSort(n: [Int]) -> [Int] {
  if n.count <= 1 { return n }
  var leftList = [Int]()
  var rightList = [Int]()
  let middle = (n.count / 2)
  for i in 0..<middle { leftList.append(n[i]) }
  for i in middle..<n.count { rightList.append(n[i]) }
  return merge(mergeSort(leftList), r: mergeSort(rightList))
}

func merge(l: [Int], r: [Int]) -> [Int] {
  var result = [Int]()
  var newL = l; var newR = r
  while newL.count > 0 && newR.count > 0 {
    if newL.first <= newR.first {
      result.append(newL.first!)
      newL = Array(newL.dropFirst())
    } else {
      result.append(newR.first!)
      newR = Array(newR.dropFirst())
    }
  }
  return result + newL + newR
}

let list = [100, 2, 56, 200, -52, 3, 99, 33, 177, -199]
print(mergeSort(list))
