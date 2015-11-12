#!/usr/bin/env swift
// http://rosettacode.org/wiki/Sorting_algorithms/Stooge_sort

func stoogeSort(inout list: [Int], i: Int, j: Int) {
  if list[j] < list[i] { swap(&list[i],&list[j]) }
  if (j - i) > 1 {
    let t = (j - i + 1)/3
    stoogeSort(&list, i: i, j: j-t)
    stoogeSort(&list, i: i+t, j: j)
    stoogeSort(&list, i: i, j: j-t)
  }
}

func stoogeSortWrapper(inout list: [Int]) -> [Int] {
  stoogeSort(&list, i: 0, j: list.count-1)
  return list
}

var t = [5,-15,11,18,-14,-20,6,-4,-1,-8,12,-18,-12,-4,-10,-8,13,4,0,16,7,-13,-13,-1,11,-9,
    13,-14,9,-19,-1,14,6,-4,7,-8,-15,-11,-9,3,10,3,-2,-5,12,-8,-2,10,-10,9,14,9,-12,
    19,-16,-6,-13,-18,-3,-13,-12,8,-8,-10,-16,5,8,-10,-10,6,-14,-20,-16,7,15,11,-19,
    -18,10,-15]

print(stoogeSortWrapper(&t))
