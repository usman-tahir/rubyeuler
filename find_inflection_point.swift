#!/usr/bin/env swift
// http://programmingpraxis.com/2015/08/21/two-homework-problems/

func inflectionPoint(n: [Int]) -> (Int,Int) {
  var inflectionPoint = (0,1)
  for i in 1..<(n.count-1) {
    if difference(n,i,i+1) < difference(n,inflectionPoint.0,inflectionPoint.1) {
      inflectionPoint = (i,i+1)
    } 
  }
  return (n[inflectionPoint.0],n[inflectionPoint.1])
}

func difference(n: [Int], a: Int, b: Int) -> Int {
  let firstHalf = n[0...a].reduce(0) { $0 + $1 }
  let secondHalf = n[b..<n.count].reduce(0) { $0 + $1 }
  return firstHalf > secondHalf ? firstHalf - secondHalf : secondHalf - firstHalf
}

let testArray = [3, 7, 9, 8, 2, 5, 6]
println(inflectionPoint(testArray))
