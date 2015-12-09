#!/usr/bin/env swift
// http://www.codewars.com/kata/stringy-strings

func stringy(size: Int) -> String {
  var result = [String]()
  for i in (0..<size) {
    i % 2 == 0 ? result.append(String(1)) : result.append(String(0))
  }
  return result.reduce("") { $0 + $1 }
}

for i in 1...10 { print(stringy(i)) }
