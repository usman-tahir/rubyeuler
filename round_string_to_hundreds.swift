#!/usr/bin/env swift
// round a number string down to hundreds place with error checking

import Foundation

func roundStringToHundreds(n: String) -> Int? {
  func roundNToHundreds(n: Int) -> Int { 
    return n > 100 ? ((n / 100) * 100) : n 
  }
  if let number = Int(n) {
    return roundNToHundreds(number)
  } else if n.containsString("-") {
    return roundStringToHundreds(n.componentsSeparatedByString("-")[0])
  } else {
    return nil
  }
}

let one = "1234"
let two = "1234-1299"
let three = "12345"
let four = "12"
let five = "one"
let six = ""
let seven = ".//$%^"
let eight = "//one234-1234"

let testValues = [one,two,three,four,five,six,seven,eight]
for t in testValues { print("\(t): \(roundStringToHundreds(t))") }
