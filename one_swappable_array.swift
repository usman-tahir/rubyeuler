#!/usr/bin/env swift
// http://programmingpraxis.com/2015/07/24/one-swappable-array/

func oneSwappableArray(array: [Int]) -> Bool {
  let sortedArray = array.sorted { $0 < $1 }
  for var i = 0; i < array.count; i++ {
    for var j = 0; j < array.count; j++ {
      var temp = array
      swap(&temp[i],&temp[j])
      if temp == sortedArray {
        return true
      }
    }
  }
  return false
}

var one = [1,2,6,4,5,3,7]
let two = [5,4,3,2,1]
println(oneSwappableArray(one))
println(oneSwappableArray(two))
