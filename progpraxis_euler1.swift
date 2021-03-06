#!/usr/bin/env swift
// http://programmingpraxis.com/2015/02/10/project-euler-problem-1/

// Find the sum of all the multiples of 3 or 5 below 1000.

func eulerOneOne() -> Int {
  let v = [Int](1..<1000)
  return v.filter() { $0 % 5 == 0 || $0 % 3 == 0 }.reduce(0, combine: +)
}

func eulerOneTwo(n: Int, limit: Int, accumulator: Int = 0) -> Int {
  guard n < limit else { return accumulator }
  if n % 3 == 0 || n % 5 == 0 { 
    return eulerOneTwo(n+1, limit: limit, accumulator: accumulator + n)
  } else {
    return eulerOneTwo(n+1, limit: limit, accumulator: accumulator)
  }
}

func eulerOneThree() -> Int {
  func eulerOneMapper(n: Int, f1: (Int) -> Bool, f2: (Int) -> Bool) -> Int? { 
    return f1(n) || f2(n) ? n : nil
  }
  func threes(n: Int) -> Bool { return n % 3 == 0 }
  func fives(n: Int) -> Bool { return n % 5 == 0 }
  let v = [Int](1..<1000)
  return v.flatMap { eulerOneMapper($0, f1: threes, f2: fives) }.reduce(0, combine: +)
}

let eulerOneFour: () -> Int = { 
  let v = [Int](1..<1000)
  let threes: (Int) -> Bool = { return $0 % 3 == 0 }
  let fives: (Int) -> Bool = { return $0 % 5 == 0 }
  let fivesOrThrees: (Int) -> Int? = { return threes($0) || fives($0) ? $0 : nil }
  return v.flatMap { return fivesOrThrees($0) }.reduce(0, combine: +)
}

print(eulerOneOne())
print(eulerOneTwo(1,limit:1000))
print(eulerOneThree())
print(eulerOneFour())
