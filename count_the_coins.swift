#!/usr/bin/env swift
// http://rosettacode.org/wiki/Count_the_coins

func countChange(amt: Int) -> Int {
  return cc(amt, kinds: 4)
}

func cc(amt: Int, kinds: Int) -> Int {
  guard amt > 0 else { return 1 }
  return (amt < 0 || kinds == 0) ? 0 : cc(amt, kinds: kinds-1) + cc(amt-firstD(kinds), kinds: kinds)
}

func firstD(kinds: Int) -> Int {
  switch kinds {
  case 1:
    return 1
  case 2:
    return 5
  case 3:
    return 10
  case 4:
    return 25
  default:
    return 0
  }
}

print(countChange(100))
