#!/usr/bin/env swift
// http://rosettacode.org/wiki/Vector_products

func dotProduct(one: [Int], two: [Int]) -> Int {
  var result: [Int] = []
  for var i = 0; i < one.count; i++ {
    result.append(one[i] * two[i])
  }
  return result.reduce(0) { $0 + $1 }
}

func crossProduct(one: [Int], two: [Int]) -> [Int] {
  return [(one[1] * two[2]) - (one[2] * two[1]), (one[2] * two[0]) - (one[0] * two[2]), (one[0] * two[1]) - (one[1] * two[0])]
}

let a = [3, 4, 5]
let b = [4, 3, 5]
let c = [-5, -12, -13]

println(dotProduct(a,b))
println(crossProduct(a,b))
println(dotProduct(a,crossProduct(b,c)))
println(crossProduct(a,crossProduct(b,c)))
