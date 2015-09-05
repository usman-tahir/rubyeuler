#!/usr/bin/env swift
// http://rosettacode.org/wiki/Letter_frequency

import Foundation

extension String {
  subscript (i: Int) -> String {
    return String(Array(self)[i])
  }
}

func charFrequency(lines: [String]) -> [String:Int] {
  var resultsDictionary = [String:Int]()
  for line in lines {
    for i in 0..<count(line) {
      let c = line[i]
      if resultsDictionary[c] != nil {
        resultsDictionary[c]! += 1
      } else {
        resultsDictionary[c] = 1
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
