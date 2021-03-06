#!/usr/bin/env/swift
// http://programmingpraxis.com/2015/09/18/three-homework-problems-2/

// 1. write a recursive function to find the sum of the first n odd integers

func addOddIntegers(n: Int, c: Int = 0, next: Int = 1, acc: Int = 0) -> Int {
  return c == n ? acc : addOddIntegers(n, c: c+1, next: next + 2, acc: acc + next)
}

print(addOddIntegers(2))

// 2. count frequency of characters in a string

func countChar(s: String) -> [Character: Int] {
  var result = [Character:Int]()
  for c in s.characters { result[c] == nil ? (result[c] = 1) : (result[c]! += 1) }
  return result
}

print(countChar("hello"))

// 3. caesar cipher

func caesarCipher(s: String, shift: Int = 0, encodeDecode: String = "e") -> String {
  let letters = Array("ABCDEFGHIJKLMNOPQRSTUVWXYZ".characters)
  func adjustI(i: Int) -> Int { 
    return (i > 25) ? (i - 26) : (i < 0) ? (26 + i) : i
  }
  func adjustShift(i: Int) -> Int {
    return encodeDecode == "e" ? adjustI(i+shift) : adjustI(i-shift)
  }
  return String(s.characters.map() { letters.indexOf($0) != nil ? letters[adjustShift(letters.indexOf($0)!)] : $0 })
}

print(caesarCipher("ATTACK AT DAWN", shift: 5))
print(caesarCipher("FYYFHP FY IFBS", shift: 5, encodeDecode: "d"))
