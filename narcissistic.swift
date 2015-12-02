#!/usr/bin/env swift
// http://rosettacode.org/wiki/Narcissistic_decimal_number

import Darwin

func split(n: Int, digits: [Int] = []) -> [Int] {
  var newDigits = digits
  if n < 10 {
    newDigits.append(n)
    return newDigits
  } else {
    newDigits.append(n%10)
    return split(n/10, digits: newDigits)
  }
}

func isNarcissisticNumber(n: Int) -> Bool {
  let splitNumber = split(n)
  return n == splitNumber.map { Int(pow(Double($0), Double(splitNumber.count))) }.reduce(0) { $0 + $1 }
}


func genFirstNNarcissistic(n: Int) {
  var found = 0
  var counter = 0
  while found < n {
    if isNarcissisticNumber(counter) { 
      print(counter)
      found++
    }
    counter++
  }
}

genFirstNNarcissistic(25)
