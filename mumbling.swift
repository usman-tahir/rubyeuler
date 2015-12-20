#!/usr/bi/env swift
// http://www.codewars.com/kata/mumbling

func accum(s: String) -> String {
  let char = s.characters.map { String($0) }
  var stringToReturn = ""
  for i in 0..<char.count {
    for j in (0..<(i+1)) {
      if j == 0 {
        stringToReturn += char[i].uppercaseString
      } else {
        stringToReturn += char[i].lowercaseString
      }
    }
    if i < (char.count-1) { stringToReturn += "-" }
  }
  return stringToReturn
}

for e in ["abcd","RqaEzty","cwAt"] {
  print(accum(e))
}
