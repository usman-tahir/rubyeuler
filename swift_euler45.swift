#!/usr/bin/env swift
// http://projecteuler.net/problem=45

import Foundation

func generateNthTriangle(nth: Int) -> Int {
  return (nth * (nth + 1)) / 2
}

func isPentagonal(n: Int) -> Bool {
  return ((sqrt((24 * Double(n)) + 1) + 1) / 6) % 1 == 0
}

func isHexagonal(n: Int) -> Bool {
  return ((sqrt((8 * Double(n)) + 1) + 1) /  4) % 1 == 0
}

func findNextTriPenHex(nth: Int = 286) -> Int {
  var counter = nth
  var nextNumber = generateNthTriangle(counter)
  while true {
    counter++
    nextNumber = generateNthTriangle(counter)
    if isPentagonal(nextNumber) && isHexagonal(nextNumber) {
      return nextNumber
    }
  }
}

println(findNextTriPenHex())
