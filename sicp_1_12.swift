#!/usr/bin/env swift
// sicp exercise 1.12

func pascalElem(row: Int, col: Int) -> Int {
  return col == 1 ? 1 : col == row ? 1 : (pascalElem(row-1,col-1) + pascalElem(row-1,col))
}

func createPacalsTriangle(rows: Int) {
  for r in 1...rows {
    for c in 1...r { 
      print("\(pascalElem(r,c)) ")
    }
    println()
  }
}

createPacalsTriangle(5)
