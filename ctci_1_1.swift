#!/usr/bin/env swift
// cracking the coding interview q 1.1
// determine if a string has all unique characters

func unique(n: String) -> Bool {
  let charactersAsSet = Array(Set(Array(n))).sorted { $0 < $1 }
  let charactersAsArray = Array(n).sorted { $0 < $1 }
  return charactersAsSet == charactersAsArray
}

println(unique("abcdefgh "))
println(unique("hello world"))

func uniqueTwo(n: String) -> Bool {
  var chars: [Character] = []
  for index in 0..<count(n) {
    let c = n[advance(n.startIndex,index)]
    if contains(chars,c) {
      return false
    } else {
      chars.append(c)
    }
  }
  return true
}

println(uniqueTwo("abcdefgh "))
println(uniqueTwo("hello world"))
