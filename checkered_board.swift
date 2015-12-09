#!/usr/bin/env swift
// http://www.codewars.com/kata/checkered-board

func checkeredBoard(size: Int) {
  let whiteSquare = "■"
  let blackSquare = "□"
  var rowEven = ""
  var rowOdd = ""
  for i in 0..<size {
    rowEven += i % 2 == 0 ? whiteSquare : blackSquare
    rowEven += " "
  }
  for i in 0..<size {
    rowOdd += i % 2 == 0 ? blackSquare : whiteSquare
    rowOdd += " "
  }
  for i in 0..<size {
    i % 2 == 0 ? print(rowEven) : print(rowOdd)
  }
}

checkeredBoard(8)
