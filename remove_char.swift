#!/usr/bin/env swift
// remove specified char from a string

func removeChar(s: String, toRemove: String) -> String {
  return String(s.characters.filter { !toRemove.characters.contains($0) })
}

let s = "Vowels Hawaii Grozny"
let r = "aeiou"
print(removeChar(s, toRemove: r))