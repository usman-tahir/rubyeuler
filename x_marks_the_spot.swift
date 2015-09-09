#!/usr/bin/env swift
// http://www.codewars.com/kata/x-marks-the-spot

func x(n: Int) -> [[Int]] {
  var matrix: [[Int]] = []
  for i in 0..<n {
    var line: [Int] = []
    for j in 0..<n {
      if i == j || j + i == n - 1 {
        line.append(1)
      } else {
        line.append(0)
      }
    }
    matrix.append(line)
  }
  return matrix
}

for result in [x(5), x(6)] {
  for line in result {
    println(line)
  }
}
