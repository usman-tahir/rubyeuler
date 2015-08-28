#!/usr/bin/env swift
// http://rosettacode.org/wiki/Anagrams/Deranged_anagrams

import Foundation

func findAnagrams(words: [String]) -> [[String]] {
  var tempResultsDictionary = [String:[String]]()
  for word in words {
    let char = String(Array(word).sorted { $0 < $1 })
    if tempResultsDictionary[char] != nil {
      tempResultsDictionary[char]! += [word]
    } else {
      tempResultsDictionary[char] = [word]
    }
  }
  var resultsDictionary: [[String]] = []
  for (k,v) in tempResultsDictionary {
    if v.count == 2 {
      resultsDictionary.append(v)
    }
  }
  return resultsDictionary
}

func derangedAnagram(one: String, two: String) -> Bool {
  let oneChars = Array(one)
  let twoChars = Array(two)
  for i in 0..<oneChars.count {
    if oneChars[i] == twoChars[i] {
      return false
    }
  }
  return true
}

func derangedAnagrams(list: [String]) -> [String] {
  var deranged: [String] = []
  for i in 0..<list.count {
    for j in 0..<list.count {
      let one = list[i]
      let two = list[j]
      if derangedAnagram(one,two) {
        deranged.append(one)
        deranged.append(two)
      }
    }
  }
  return Array(Set(deranged))
}

func findLongestDerangedAnagrams() -> [String] {
  let file = "unixdict.txt"
  let fileContent = String(NSString(contentsOfFile: file, encoding: NSUTF8StringEncoding, error: nil)!)
  let wordsArray = split(fileContent) { $0 == "\n" }
  let anagrams = findAnagrams(wordsArray)
  var deranged: [[String]] = []
  for a in anagrams {
    let d = derangedAnagrams(a)
    if d.count > 1 {
      deranged.append(derangedAnagrams(a))
    }
  }
  var longestIndex = 0
  var longestCount = count(deranged[0][0])
  for i in 1..<deranged.count {
    if count(deranged[i][0]) > longestCount {
      longestIndex = i
      longestCount = count(deranged[i][0])
    }
  }
  return deranged[longestIndex]
}

println(findLongestDerangedAnagrams())