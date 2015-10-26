#!/usr/bin/env swift
// http://programmingpraxis.com/2013/06/18/3sum/

func findZeroSumTerms(array: [Int]) -> [[Int]] {
  var solutions:[String:[Int]] = [:]
  for i in 0..<array.count {
    for j in i..<array.count {
      let testVal = -(array[i] + array[j])
      if array.contains(testVal) {
        let threeToAppend = [array[i], array[j], testVal].sort { $0 < $1 }
        solutions["\(threeToAppend)"] = threeToAppend
      }
    }
  }
  return Array(solutions.values)
}

let testArray = [8, -25, 4, 10, -10, -7, 2, -3] 
print(findZeroSumTerms(testArray))
