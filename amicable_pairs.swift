#!/usr/bin/env swift
// http://rosettacode.org/wiki/Amicable_pairs

func factors(n: Int) -> [Int] {
  var factorsOfN: [Int] = []
  for i in 1..<n {
    if n % i == 0 { factorsOfN.append(i) }
  }
  return factorsOfN
}

func findAmicablePairs(limit: Int) -> [Int:Int] {
  var pairs: [Int:Int] = [:]
  var amicables:[Int:Int] = [:]
  for i in 1..<limit {
    amicables[i] = factors(i).reduce(0) { $0! + $1 }
  }
  for (k,v) in amicables {
    if amicables[v] == k && v != k {
      let temp = [k,v].sort { $0 < $1 }
      pairs[temp[0]] = temp[1]
    }
  }
  return pairs
}

print(findAmicablePairs(20_000))
