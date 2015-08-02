#!/usr/bin/env swift
// http://programmingpraxis.com/2013/07/26/find-xi-i-in-an-array/

func elementIsIndex(list: [Int]) -> Int? {
  for var i = 0; i < list.count; i++ {
    if list[i] == i {
      return i
    }
  }
  return nil
}

let elements = [-3,0,1,3,5,7]

println(elementIsIndex(elements))