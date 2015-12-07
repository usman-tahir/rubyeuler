#!/usr/bin/env swift
// http://rosettacode.org/wiki/Greatest_common_divisor

func greatestCommonDiv(a: Int, b: Int) -> Int {
  return b == 0 ? a : greatestCommonDiv(b, b: (a%b))
}

print("33 & 36")
print(greatestCommonDiv(33, b: 36))
print("36 & 16")
print(greatestCommonDiv(36, b: 16))
print("8 & 24")
print(greatestCommonDiv(8, b: 24))
