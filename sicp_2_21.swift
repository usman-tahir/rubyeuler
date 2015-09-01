#!/usr/bin/env swift
// sicp exercise 2.21

func newMap(proc: (Int) -> (Int), n: [Int], i: Int = 0) -> [Int] {
  var newN = n
  if i == n.count {
    return newN
  } else {
    newN[i] = proc(n[i])
    return newMap(proc, newN, i: i+1)
  }
}

func square(n: Int) -> Int {
  return n * n
}

func squareList(items: [Int]) -> [Int] {
  return newMap(square,items)
}

let list = [1,2,3,4]
println(squareList(list))
