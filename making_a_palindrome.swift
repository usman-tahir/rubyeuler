#!/usr/bin/env swift
// http://programmingpraxis.com/2015/09/29/making-a-palindrome/

func countElements(s: [Character], c: Character) -> Int {
  return s.filter { $0 == c }.count
}

func findElementWithOddCount(s: [Character]) -> Character? {
  for c in s { if countElements(s, c: c) % 2 != 0 { return c } }
  return nil
}

func palindromePossible(s: String) -> Bool {
  var dict = [Character:Int]()
  for c in s.characters {
    if dict[c] == nil { dict[c] = countElements(Array(s.characters), c: c) }
  }
  var flag = 0
  for (_,v) in dict { if v % 2 == 1 { flag++ } }
  return flag <= 1
}

func makingAPalindrome(s: String) -> String? {
  if !palindromePossible(s) { return nil }
  var result = [Character]()
  var char = s.characters.sort { $0 < $1 }
  if char.count % 2 != 0 {
    char = char.filter { $0 != findElementWithOddCount(char) }
  }
  for i in 0..<char.count {
    i % 2 == 0 ? result.insert(char[i], atIndex: 0) : result.append(char[i])
  }
  if let extra = findElementWithOddCount(Array(s.characters)) {
    for _ in 0...countElements(Array(s.characters), c: extra) { 
      result.insert(extra, atIndex: result.count/2)
    }
  }
  return String(result)
}

let test = "pprrrraaxxxiiiiiissss"
print(makingAPalindrome(test))
