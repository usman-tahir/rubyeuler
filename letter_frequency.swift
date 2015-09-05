#!/usr/bin/env swift
// http://rosettacode.org/wiki/Letter_frequency

import Foundation

func charFrequency(lines: [String]) -> [String:Int] {
  var resultsDictionary = [String:Int]()
  for line in lines {
    for c in Array(line) {// 0..<count(line) {
      let _c = String(c)
      if resultsDictionary[_c] != nil {
        resultsDictionary[_c]! += 1
      } else {
        resultsDictionary[_c] = 1
      }
    }
  }
  return resultsDictionary
}

func findUnixDictLetterFrequency() -> [String:Int] {
  let file = "unixdict.txt"
  let fileContent = String(NSString(contentsOfFile: file, encoding: NSUTF8StringEncoding, error: nil)!)
  let linesArray = split(fileContent) { $0 == "\n" }
  return charFrequency(linesArray)
}

println(findUnixDictLetterFrequency())
