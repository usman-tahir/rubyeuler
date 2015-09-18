#!/usr/bin/env swift
// helper functions to parse some addresses

import Foundation

func roundStringToHundreds(n: String) -> Int? {
  func roundNToHundreds(n: Int) -> Int { 
    return n > 100 ? ((n / 100) * 100) : n 
  }
  return Int(n) != nil ? roundNToHundreds(Int(n)!) : nil
}

func getStreetNumberFromAddressString(s: String) -> String? {
  if s.characters.count == 0 {
    return nil
  } else if Int(s) != nil {
    return s
  } else if s.characters.first == " " {
    let newS = String(s.characters.dropFirst())
    return getStreetNumberFromAddressString(newS)
  } else if s.containsString("-") {
    let newS = s.componentsSeparatedByString("-")[0]
    return getStreetNumberFromAddressString(newS)
  } else if s.containsString(" ") {
    let newS = (s.componentsSeparatedByString(" ")[0])
    return getStreetNumberFromAddressString(newS)
  } else {
    return nil
  }
}

let testArray = ["1234 main street",
  "1 main street",
  "202 45th street",
  "one two street",
  " ",
  " 1234 main street",
  "1234",
  "1234-1299 4th street",
  "12345 main street",
  "235 s 123rd street",
   "2 s 12th st",
  "123 4 pl",
  ".//$%^ st",
  "//one234-1234 st",
  "",
  "qwerty"]

for t in testArray {
  if let n = getStreetNumberFromAddressString(t) {
    print("\(t) => \(roundStringToHundreds(n))")
  } else {
    print("\(t) => nil")
  }
}
