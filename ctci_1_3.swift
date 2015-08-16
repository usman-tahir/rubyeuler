#!/usr/bin/env swift
// cracking the coding interview q 1.3
// determine if a string is a permutation of another

func isPermutation(x: String, y: String) -> Bool {
  let charactersX = Array(x).sorted { $0 < $1 }
  let charactersY = Array(y).sorted { $0 < $1 }
  return charactersX == charactersY
}

println(isPermutation("asdf","fdsa"))
println(isPermutation("hello","world"))