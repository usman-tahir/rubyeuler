#!/usr/bin/env swift
// http://programmingpraxis.com/2015/09/22/three-more-homework-problems/

import Foundation

// 1. given a list of int, return a list without the duplicates

func removeDuplicates(list: [Int], newList: [Int] = [], index: Int = 0) -> [Int] {
  var localList = newList
  if index == list.count {
    return localList
  } else {
    if !localList.contains(list[index]) { localList.append(list[index]) }
    return removeDuplicates(list, newList: localList, index: index+1)
  }
}

let testOne = [3, 2, 4, 2, 7, 3, 5, 1, 3]
print(removeDuplicates(testOne) == [3, 2, 4, 7, 5, 1])

// 2. given two lists of int, each sorted in ascending order, return a list of
// ints in both lists sorted in ascending order

func findCommonInt(x: [Int], y: [Int], newList: [Int] = [], index: Int = 0) -> [Int] {
  var localList = newList
  if index == x.count {
    return localList
  } else {
    if y.contains(x[index]) { localList.append(x[index]) }
    return findCommonInt(x, y: y, newList: localList, index: index+1)
  }
}

let testTwoA = [2, 3, 5, 5, 6, 7, 8, 9]
let testTwoB = [1, 2, 4, 5, 5, 7]
print(findCommonInt(testTwoA, y: testTwoB) == [2, 5, 5, 7])

// 3. given a positive int, determine if it's a perfect cube

extension Int {
  
  func primeFactors() -> [Int] {
    var newN = self
    var primeFactorsList = [Int]()
    if newN % 2 == 0 { (primeFactorsList.append(2)); (newN /= 2) }
    for (var i = 3; i <= Int(sqrt(Double(self))); i += 2) {
      while (newN % i == 0) {
        primeFactorsList.append(i)
        newN /= i
      }
    }
    return (newN > 2) ? [newN] : primeFactorsList
  }

}

func isPerfectCube(n: Int) -> Bool {
  let factors = n.primeFactors()
  for f in factors {
    if (factors.filter() { $0 == f }.count) % 3 != 0 { return false }
  }
  return true
}

let isCube = 125
let isNotCube = 121
print(isPerfectCube(isCube) == true)
print(isPerfectCube(isNotCube) == false)