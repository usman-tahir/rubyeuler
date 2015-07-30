#!/usr/bin/env swift
// http://programmingpraxis.com/2015/07/28/next-to-last-item-in-a-list/

func nextToLast(list: [Int]) -> [Int]? {
  if list.count < 2 {
    return nil
  } else {
    var newList = list
    while newList.count > 2 {
      newList = cdr(newList)
    }
    return car(newList)
  }
}

func nthToLast(list: [Int], nth: Int = 2) -> [Int]? {
  if list.count < nth {
    return nil
  } else {
    var newList = list
    while newList.count > nth {
      newList = cdr(newList)
    }
    return car(newList)
  }
}

func car(list: [Int]) -> [Int] {
  var newList = list
  return [newList[0]]
}

func cdr(list: [Int]) -> [Int] {
  var newList = list
  newList.removeAtIndex(0)
  return newList
}

let list = [1,2,3,4,5]
let test = [1]
println(nextToLast(list))
println(nthToLast(list, nth: 3))