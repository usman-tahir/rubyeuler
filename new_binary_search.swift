#!/usr/bin/env swift
// binary search

func binarySearch(list: [Int], low: Int, high: Int, element: Int) -> Int? {
  guard low < high else { return nil }
  let mid = (low + high) / 2
  if list[mid] > element {
    return binarySearch(list, low: low, high: mid-1, element: element)
  } else if list[mid] < element {
    return binarySearch(list, low: mid+1, high: high, element: element)
  } else {
    return mid
  }
}

func binarySearchWrapper(list: [Int], element: Int) -> Int? {
  let low = 0
  let high = list.count-1
  return binarySearch(list, low: low, high: high, element: element)
}

let o = [1,2,3,4,5,6,7,8,9,10]
let t = [100,200,300,600,700,900,100]

print(binarySearchWrapper(o, element: 6))
print(binarySearchWrapper(t, element: 500))
