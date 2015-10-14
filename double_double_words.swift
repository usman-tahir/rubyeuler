#!/usr/bin/env swift
// http://programmingpraxis.com/2015/10/13/double-double-words/

func stringToArray(n: String) -> [String] {
  return n.characters.split{$0 == " "}.map(String.init)
}

func findDoubledWords(n: String) -> [Int:String] {
  var resultsDictionary = [Int:String]()
  let nArray = stringToArray(n)
  for i in 1..<nArray.count {
    if nArray[i] == nArray[i-1] {
      resultsDictionary[i] = nArray[i]
    }
  }
  return resultsDictionary
}

let wordsOne = "hello world"
let wordsTwo = "hello world world Hello Hello"

print(findDoubledWords(wordsTwo))