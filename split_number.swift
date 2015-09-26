#!/usr/bin/env swift
// get a number from 113-199 type string

func getFirstNumber(n: String) -> String {
  let digits = ["1","2","3","4","5","6","7","8","9","0"]
  var result = [Character]()
  for d in n.characters {
    if digits.contains(String(d)) {
      result.append(d)
    } else {
      break
    }
  }
  return String(result)
}

print(getFirstNumber("123-199"))
