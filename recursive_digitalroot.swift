#!/usr/bin/env swift
// http://rosettacode.org/wiki/Digital_root

func split(number: Int, array: [Int] = []) -> [Int] {
  var newArray = array
  if number < 10 {
    newArray.append(number)
    return newArray
  } else {
    newArray.append(number%10)
    return split(number/10, array: newArray)
  }
}

func numberLength(number: Int) -> Int {
  return split(number).count
}

func findDigitalRoot(number: Int) -> (root: Int, persistence: Int) {
  var temp = number
  var persistence = 0
  while numberLength(temp) > 1 {
    temp = split(temp).reduce(0) { $0 + $1 }
    persistence++
  }
  return (temp, persistence)
}

let testValues = [627615, 39390, 588225, 393900588225]
for val in testValues {
  let digitalRoot = findDigitalRoot(val)
  println("\(val) has digital root of \(digitalRoot.root) & additive persistence of \(digitalRoot.persistence)")
}
