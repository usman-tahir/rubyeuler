#!/usr/bin/env swift
// http://www.codewars.com/kata/convert-number-to-reversed-array-of-digits

func numberToDigits(n: Int, digits: [Int] = []) -> [Int] {
  var newDigits = digits
  if n < 10 {
    newDigits.append(n)
    return newDigits
  } else {
    newDigits.append(n % 10)
    return numberToDigits(n/10, digits: newDigits)
  }
}

let n = 357
println(numberToDigits(n))
