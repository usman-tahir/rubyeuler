#!/usr/bin/env swift
// http://programmingpraxis.com/2016/01/29/compare-strings-with-one-error/

func compareWithOneError(s1: String, s2: String) -> Int {
  guard s1 != s2 else { return -1 }
  var errorCount = 0
  var diffIndex = 0
  var oneChar = s1.characters.map { String($0) }
  var twoChar = s2.characters.map { String($0) }
  if oneChar.count == twoChar.count {
    for var i = 0; i < oneChar.count; i++ {
      if oneChar[i] != twoChar[i] {
        diffIndex = i
        errorCount += 1
      }
      if errorCount > 1 { return -1 }
    }
    return diffIndex
  } else if oneChar.count + 1 == twoChar.count {
    for var i = 0; i < twoChar.count; i++ {
      if oneChar[i] != twoChar[i] {
        diffIndex = i
        twoChar.removeAtIndex(i)
        errorCount += 1
      }
      if errorCount > 1 { return -1 }
    }
    return diffIndex
  } else if oneChar.count == twoChar.count + 1 {
    for var i = 0; i < oneChar.count; i++ {
      if oneChar[i] != twoChar[i] {
        diffIndex = i
        oneChar.removeAtIndex(i)
        errorCount += 1
      }
      if errorCount > 1 { return -1 }
    }
    return diffIndex
  } else { 
    return -1
  }
}

print(compareWithOneError("one", s2: "one"))
print(compareWithOneError("ome", s2: "one"))
print(compareWithOneError("one", s2: "bone"))
print(compareWithOneError("one", s2: "bome"))
print(compareWithOneError("bone", s2: "one"))
print(compareWithOneError("bone", s2: "ome"))