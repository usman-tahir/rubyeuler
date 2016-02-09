#!/usr/bin/env swift
// http://rosettacode.org/wiki/N%27th

import Foundation

func nth(n: Int) -> String {
  var nString = String(n).characters.map { String($0) }
  if nString.count >= 2 {
    if nString[nString.count-2] != "1" {
      switch nString[nString.count-1] {
        case "1":
          nString.append("st")
        case "2":
          nString.append("nd")
        case "3":
          nString.append("rd")
        default:
          nString.append("th")
      }
    } else {
      nString.append("th")
    }
  } else if nString.count < 2 {
    switch nString[0] {
      case "1":
        nString.append("st")
      case "2":
        nString.append("nd")
      case "3":
        nString.append("rd")
      default:
        nString.append("th")
    }
  }
  return nString.joinWithSeparator("")
}

for i in 0...25 { print(nth(i)) }
for i in 250...265 { print(nth(i)) }
for i in 1000...1025 { print(nth(i)) }
