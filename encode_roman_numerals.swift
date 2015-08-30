#!/usr/bin/env swift
// http://rosettacode.org/wiki/Roman_numerals/Encode

import Foundation

func split(n: Int) -> [Int] {
  return reverse(Array(String(n))).map { "\($0)".toInt()! }
}

func romanNumeral(n: Int) -> String {
  var romanNumeralString = ""
  var splitN = split(n).map { Double($0) }
  for i in 0..<splitN.count {
    splitN[i] = splitN[i] * pow(10,Double(i))
  }
  for var i = splitN.count - 1; i >= 0; i-- {
    switch splitN[i] {
    case 5000.0:
      romanNumeralString += "MMMMM"
    case 4000.0:
      romanNumeralString += "MMMM"
    case 3000.0:
      romanNumeralString += "MMM"    
    case 2000.0:
      romanNumeralString += "MM"
    case 1000.0:
      romanNumeralString += "M"
    case 900.0:
      romanNumeralString += "CM"
    case 800.0:
      romanNumeralString += "DCCC"
    case 700.0:
      romanNumeralString += "DCC"
    case 600.0:
      romanNumeralString += "DC"
    case 500.0:
      romanNumeralString += "D"
    case 400.0:
      romanNumeralString += "CD"
    case 300.0:
      romanNumeralString += "CCC"
    case 200.0:
      romanNumeralString += "CC"
    case 100.0:
      romanNumeralString += "C"
    case 90.0:
      romanNumeralString += "XC"
    case 80.0:
      romanNumeralString += "LXXX"
    case 70.0:
      romanNumeralString += "LXX"
    case 60.0:
      romanNumeralString += "LX"
    case 50.0:
      romanNumeralString += "L"
    case 40.0:
      romanNumeralString += "XL"
    case 30.0:
      romanNumeralString += "XXX"
    case 20.0:
      romanNumeralString += "XX"
    case 10.0:
      romanNumeralString += "X"
    case 9.0:
      romanNumeralString += "IX"
    case 8.0:
      romanNumeralString += "VIII"
    case 7.0:
      romanNumeralString += "VII"
    case 6.0:
      romanNumeralString += "VI"
    case 5.0:
      romanNumeralString += "V"
    case 4.0:
      romanNumeralString += "IV"
    case 3.0:
      romanNumeralString += "III"
    case 2.0:
      romanNumeralString += "II"
    case 1.0:
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
