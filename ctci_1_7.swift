#!/usr/bin/env swift
// cracking the coding interview q 1.7

func zeroMatrixRowAndColumn(matrix: [[Int]]) -> [[Int]] {
  var result = matrix
  var zeroPoints: [[Int]] = [[],[]]
  for rowIndex in 0..<matrix.count {
    if contains(matrix[rowIndex],0) {
      zeroPoints[0].append(rowIndex)
    }
    for colIndex in 0..<matrix[rowIndex].count {
      if matrix[rowIndex][colIndex] == 0 {
        zeroPoints[1].append(colIndex)
      }
    }
  }
  zeroPoints = [Array(Set(zeroPoints[0])),Array(Set(zeroPoints[1]))]
  for rowIndex in 0..<matrix.count {
    for colIndex in 0..<matrix[rowIndex].count {
      if contains(zeroPoints[0],rowIndex) || contains(zeroPoints[1],colIndex) {
        result[rowIndex][colIndex] = 0
      }
    }
  }
  return result
}

let matrix = [[1,2,3],[4,0,5],[3,0,7]]
println(zeroMatrixRowAndColumn(matrix))
