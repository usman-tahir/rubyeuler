#!/usr/bin/env swift
// get street number from address string
// swift 1.2

import Foundation

extension String {
  subscript (i: Int) -> String {
    return String(Array(self)[i])
  }
}

func getStreetNumberFromAddressString(s: String) -> Int? {
  if count(s) == 0 {
    return nil
  } else if let a = s.toInt() {
    return a
  } else if s[0] == " " {
    let newS = s.substringFromIndex(advance(s.startIndex,1))
    return getStreetNumberFromAddressString(newS)
  } else if contains(s," ") {
    let newS = (s.componentsSeparatedByString(" ")[0])
    return getStreetNumberFromAddressString(newS)
  } else {
    return nil
  }
}

let one = "1234 main street"
let two = "1 main street"
let three = "202 45th street"
let four = "one two street"
let five = " "
let six = " 1234 main street"

for t in [one,two,three,four,five,six] { println("\(t): \(getStreetNumberFromAddressString(t))") }
