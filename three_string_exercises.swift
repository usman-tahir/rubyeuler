#!/usr/bin/env swift
// https://programmingpraxis.com/2016/02/12/three-string-exercises/

// 1. write a function that determines the length of a string

func stringLength(s: String, l: Int = 0) -> Int {
  guard s.characters.first != nil else { return l }
  let newString = String(s.characters.dropFirst())
  return stringLength(newString, l: l+1)
}

let stringToTest = "hello world"
let sttCount = stringToTest.characters.count
print(stringLength(stringToTest) == sttCount)

let otherString = ""
print(stringLength(otherString) == 0)

// 2. write a function that finds the index of the first occurence of a character
// in a string, optionally given a starting index

func findIndex(s: String, c: Character, startIndex: Int = 0) -> Int? {
  guard s.characters.first != nil else { return nil }
  if s.characters.first == c {
    return startIndex
  } else {
    let newS = s.characters.dropFirst()
    return findIndex(String(newS), c: c, startIndex: startIndex+1)
  }
}

print(findIndex(stringToTest, c: " "))
print(findIndex(otherString, c: "a"))

// 3. write a function that creates a newstring as a substring of an original string
// given start and end index

func newStringFromSubStringWithIndices(s: String, start: Int, end: Int, current: Int = 0, newString: String = "") -> String {
  guard s.characters.first != nil else { return newString }
  if current == end {
    return newString
  } else if current >= start {
    var newNewString = newString
    newNewString += String(s.characters.first!)
    let consumedString = String(s.characters.dropFirst())
    return newStringFromSubStringWithIndices(consumedString, start: start, end: end, current: current+1, newString: newNewString)
  } else {
    let consumedString = String(s.characters.dropFirst())
    return newStringFromSubStringWithIndices(consumedString, start: start, end: end, current: current+1, newString: newString)
  }
}

print(newStringFromSubStringWithIndices(otherString, start: 0, end: 0))
print(newStringFromSubStringWithIndices(stringToTest, start: 3, end: 5))
