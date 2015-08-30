#!/usr/bin/env swift
// http://rosettacode.org/wiki/Roman_numerals/Encode

import Foundation

func split(n: Int) -> [Int] {
  return reverse(Array(String(n))).map { "\($0)".toInt()! }
}

func romanNumeral(n: Int) -> String {
  var romanNumeralString = ""
  var splitN = split(n)
  for i in 0..<splitN.count {
    splitN[i] = splitN[i] * Int(pow(10,Double(i)))
  }
  for var i = splitN.count - 1; i >= 0; i-- {
    switch splitN[i] {
    case 5000:
      romanNumeralString += "MMMMM"
    case 4000:
      romanNumeralString += "MMMM"
    case 3000:
      romanNumeralString += "MMM"    
    case 2000:
      romanNumeralString += "MM"
    case 1000:
      romanNumeralString += "M"
    case 900:
      romanNumeralString += "CM"
    case 800:
      romanNumeralString += "DCCC"
    case 700:
      romanNumeralString += "DCC"
    case 600:
      romanNumeralString += "DC"
    case 500:
      romanNumeralString += "D"
    case 400:
      romanNumeralString += "CD"
    case 300:
      romanNumeralString += "CCC"
    case 200:
      romanNumeralString += "CC"
    case 100:
      romanNumeralString += "C"
    case 90:
      romanNumeralString += "XC"
    case 80:
      romanNumeralString += "LXXX"
    case 70:
      romanNumeralString += "LXX"
    case 60:
      romanNumeralString += "LX"
    case 50:
      romanNumeralString += "L"
    case 40:
      romanNumeralString += "XL"
    case 30:
      romanNumeralString += "XXX"
    case 20:
      romanNumeralString += "XX"
    case 10:
      romanNumeralString += "X"
    case 9:
      romanNumeralString += "IX"
    case 8:
      romanNumeralString += "VIII"
    case 7:
      romanNumeralString += "VII"
    case 6:
      romanNumeralString += "VI"
    case 5:
      romanNumeralString += "V"
    case 4:
      romanNumeralString += "IV"
    case 3:
      romanNumeralString += "III"
    case 2:
      romanNumeralString += "II"
    case 1:
      romanNumeralString += "I"
    default:
      romanNumeralString += ""
    }
  }
  return romanNumeralString
}

for y in [1990,2008,1666] {
  println(romanNumeral(y))
}
