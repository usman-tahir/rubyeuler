#!/usr/bin/env swift
// sicp exercise 2.18

func reverse(list: [Int], i: Int = 0, newList: [Int] = []) -> [Int] {
  let e:Int? = list[i]
  if e == nil {
    return newList
  } else {
    var newNewList = newList
    newNewList.insert(list[i], atIndex: 0)
    return reverse(list, i: i+1, newList: newNewList)
  }
}

let list = [1,4,9,16,25]
println(reverse(list))
