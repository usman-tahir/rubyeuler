#!/usr/bin/env swift
// cracking the coding interview q 1.7

func zeroMatrixRowAndColumn(matrix: [[Int]]) -> [[Int]] {
  var zeroPoints: [[Int]] = [[],[]]
  for rowIndex in 0..<matrix.count {
    let currentRow = matrix[rowIndex]
    if contains(currentRow,0) {
      zeroPoints[0].append(rowIndex)
    }
    for colIndex in 0..<currentRow.count {
      if currentRow[colIndex] == 0 {
        zeroPoints[1].append(colIndex)
      }
    }
  }
  zeroPoints = [Array(Set(zeroPoints[0])),Array(Set(zeroPoints[1]))]
  var result = matrix
  for rowIndex in 0..<matrix.count {
    for colIndex in 0..<matrix[rowIndex].count {
      if contains(zeroPoints[0],rowIndex) || contains(zeroPoints[1],colIndex) {
        result[rowIndex][colIndex] = 0
      } else {
        result[rowIndex][colIndex] = matrix[rowIndex][colIndex]
      }
    }
  }
  return result
}

let matrix = [[1,2,3],[4,0,5],[3,0,7]]
println(zeroMatrixRowAndColumn(matrix))
