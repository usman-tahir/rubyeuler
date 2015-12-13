#!/usr/bin/env swift
// find first nonrepeated character in a string

func findFirstNonrepeatedCharacter(s: String) -> Character? {
  guard s.characters.count > 0 else { return nil }
  var table = [Character:Int]()
  for c in s.characters {
    table[c] = s.characters.filter { $0 == c }.count
  }
  for c in s.characters {
    if table[c] == 1 { return c }
  }
  return nil
}


for w in ["total", "teeter"] { print(findFirstNonrepeatedCharacter(w)) }
