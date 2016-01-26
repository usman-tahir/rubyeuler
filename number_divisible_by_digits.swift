#!/usr/bin/env swift
// http://codegolf.stackexchange.com/questions/41902/is-a-number-divisible-by-each-of-its-digits

func divisibleByEachDigit(n: Int) -> Bool {
  let digits = String(n).characters.map { Int(String($0))! }
  for d in digits {
    if d == 0 || n % d != 0 { return false }
  }
  return true
}

print(divisibleByEachDigit(120))
print(divisibleByEachDigit(128))
