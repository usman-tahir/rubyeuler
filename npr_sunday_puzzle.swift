#!/usr/bin/env swift
// https://programmingpraxis.com/2013/02/19/npr-sunday-puzzle/

import Foundation

func readUnixDictionaryIntoArray() -> [String] {
  let file = try! NSString(contentsOfFile: "unixdict.txt", 
    encoding: NSUTF8StringEncoding)
  let words = String(file).characters.split { $0 == "\n" }
    .map(String.init)
  return words
}

func findABCDEFWords(words: [String]) -> [String] {
  var resultWords = [String]()
  func hasABCDEFPlusTwo(s: String) -> Bool {
    let letters = ["A","B","C","D","E","F"]
    guard s.characters.count == letters.count + 2 else { 
      return false 
    }
    let sChars = s.characters.map { String($0).capitalizedString }
    for l in letters {
      if !sChars.contains(l) { return false }
    }
    return true
  }
  for word in words { 
    if hasABCDEFPlusTwo(word) { 
      resultWords.append(word)
    }
  }
  return resultWords
}

let w = readUnixDictionaryIntoArray()
print(findABCDEFWords(w))
