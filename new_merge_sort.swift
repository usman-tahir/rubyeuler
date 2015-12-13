#!/usr/bin/env swift
// merge sort

func mergeSort(list: [Int]) -> [Int] {
  guard list.count > 1 else { return list }
  let midpoint = list.count/2
  var firstHalf = [Int]()
  var secondHalf = [Int]()
  for i in 0..<list.count {
    i < midpoint ? firstHalf.append(list[i]) : secondHalf.append(list[i])
  }
  return merge(mergeSort(firstHalf), second: mergeSort(secondHalf))
}

func merge(first: [Int], second: [Int]) -> [Int] {
  var listToReturn = [Int]()
  var newFirst = first
  var newSecond = second
  while newFirst.count > 0 && newSecond.count > 0 {
    if newFirst.first < newSecond.first {
      listToReturn.append(newFirst.first!)
      newFirst = Array(newFirst.dropFirst())
    } else {
      listToReturn.append(newSecond.first!)
      newSecond = Array(newSecond.dropFirst())
    }
  }
  return listToReturn + newFirst + newSecond
}

let o = [10,8,100,1,637,234,233,235,98,1000,2,5,6]
print(mergeSort(o))