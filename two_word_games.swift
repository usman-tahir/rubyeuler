#!/usr/bin/env swift

import Foundation

func fiveAscendingVowels(word: String) -> Bool {
  let vowels:[String] = ["a","e","i","o","u"]
  var vowelsInWord:[String] = word.characters.map { String($0) }.filter { vowels.contains($0) }
  if vowelsInWord.count < 5 { return false }
  for i in 0..<vowelsInWord.count {
    if vowelsInWord[i] != vowels[i] { return false }
  }
  return true
}

func sixPlusAscendingAlphaOrder(word: String) -> Bool {
  let c = word.characters.map { String($0) }
  if c.count < 6 { return false }
  let sortedC = c.sort { $0 < $1 }
  return sortedC == c
}

func findWordsForTest(dict: String, test: (String) -> Bool) -> [String] {
  let fileContents = try! String(contentsOfFile: dict, encoding: NSUTF8StringEncoding)
  let wordsArray = fileContents.componentsSeparatedByString("\n")
  return wordsArray.filter { test($0) }
}

print(findWordsForTest("unixdict.txt", test: fiveAscendingVowels))
print(findWordsForTest("unixdict.txt", test: sixPlusAscendingAlphaOrder))
