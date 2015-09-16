#!/usr/bin/env swift
// http://programmingpraxis.com/2015/03/24/excellent-numbers/
// find excellent numbers below 1_000_000

func excellentNumber(n: Int) -> Bool {
  if let halves = split(n) {
    return (square(join(halves.1)) - square(join(halves.0)) == n)
  }
  return false
}

func split(n: Int, digits: [Int] = []) -> ([Int],[Int])? {
  var newDigits = digits
  if n < 10 {
    newDigits.insert(n, atIndex: 0)
    if newDigits.count % 2 == 0 {
      let a = Array(newDigits[0..<newDigits.count/2])
      let b = Array(newDigits[newDigits.count/2..<newDigits.count])
      return (a,b)
    } else {
      return nil
    }
  } else {
    newDigits.insert(n % 10, atIndex: 0)
    return split(n/10,digits: newDigits)
  }
}

func join(numbers: [Int]) -> Int {
  let digits = Int(numbers.map { "\($0)" }.reduce("") { $0 + $1 })!
  return digits
}

func square(n: Int) -> Int {
  return n * n
}

for i in 1...1_000_000 { if excellentNumber(i) { print(i) } }
