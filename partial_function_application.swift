#!/usr/bin/env swift
// http://rosettacode.org/wiki/Partial_function_application

func newMap(f: (Int) -> (Int), s: [Int], v: [Int] = [], i: Int = 0) -> [Int] {
  var newS = v
  if i == count(s) {
    return v
  } else {
    newS.append(f(s[i]))
    return newMap(f, s, v: newS, i: i+1)
  }
}

let f1 = { (n: Int) -> Int in return n * 2 }
let f2 = { (n: Int) -> Int in return n * n }
let fs = { (f: (Int) -> (Int), s: Int) -> Int in return f(s) }
let fsf1 = { (s: [Int]) -> [Int] in return newMap(f1,s) }
let fsf2 = { (s: [Int]) -> [Int] in return newMap(f2,s) }

for list in [[0,1,2,3],[2,4,6,8]] {
  println(fsf1(list))
  println(fsf2(list))
}
