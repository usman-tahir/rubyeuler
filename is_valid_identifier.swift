#!/usr/bin/env swift
// http://www.codewars.com/kata/is-valid-identifier

func validate(s: String) -> Bool {
  guard s.characters.count > 0 else { return false }
  let validCharacters = "abcdefghijklmnopqrstuvwxyz$_".characters.map { String($0) }
  let digits = "0123456789".characters.map { String($0) }
  let stringChar = s.characters.map { String($0) }
  guard validCharacters.contains(stringChar.first!) else { return false }
  for c in stringChar {
    if !validCharacters.contains(c) && !digits.contains(c) {
      return false
    }
  }
  return true
}

func test(list: [String], fn: (String) -> Bool) -> Bool {
  for item in list {
    if !fn(item) {
      return false
    }
  }
  return true
}

let valids = ["i","wo_rd","b2h"]
let invalids = ["1i","wo rd","!b2h"]
print(test(valids, fn: validate))
print(test(invalids, fn: validate))

