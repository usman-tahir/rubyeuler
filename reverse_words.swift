#!/usr/bin/env swift
// reverse words

func reverseWords(s: String) -> [String] {
  return s.characters.split(" ").reverse().map(String.init)
}

let o = "Do or do not, there is no try."
print(reverseWords(o))
