#!/usr/bin/env swift
// cracking the coding interview q 1.5

func stringCharAtIndex(s: String, i: Int) -> Character? {
  return i >= count(s) ? nil : s[advance(s.startIndex,i)]
}

func nextCharIsSame(s: String, i: Int) -> Int {
  if i >= count(s) {
    return 0 
  } else {
    var newI = i+1
    var counter = 1
    while stringCharAtIndex(s, i) == stringCharAtIndex(s, newI) {
      newI++
      counter++
    }
    return counter
  }
}

func compressString(s: String) -> String {
  var newString = ""
  for var i = 0; i < count(s); i++ {
    let c = stringCharAtIndex(s,i)!
    let n = nextCharIsSame(s,i)
    if n >= 1 {
      newString = newString + "\(c)\(n)"
      i += (n - 1)
    } else {
      continue
    }
  }
  return newString
}

println(compressString("aabcccccaaa"))
