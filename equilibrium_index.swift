#!/usr/bin/env swift
// http://rosettacode.org/wiki/Equilibrium_index

func equilibriumIndex(list: [Int]) -> [Int] {
  var eqIndices = [Int]()
  for i in 1..<list.count {
    let firstPart = Array(list[0..<i+1]).reduce(0, combine: +)
    let secondPart = Array(list[i..<list.count]).reduce(0, combine: +)
    if firstPart == secondPart { 
      eqIndices.append(i) 
    }
  }
  return eqIndices
}

let t = [-7,1,5,2,-4,3,0]
print(equilibriumIndex(t))
