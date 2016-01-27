#!/usr/bin/env swift
// http://rosettacode.org/wiki/99_Bottles_of_Beer

func bottles(n: Int) {
  guard n > 0 else { return }
  func affix(x: Int) -> String { return n == 1 ? "" : "s" }
  print("\(n) bottle\(affix(n)) of beer on the wall")
  print("\(n) bottle\(affix(n)) of beer")
  print("take one down, pass it around")
  print("\(n-1) bottle\(affix(n)) of beer on the wall")
  bottles(n-1)
}

bottles(99)
