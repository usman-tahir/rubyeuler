#!/usr/bin/env swift
// http://programmingpraxis.com/2015/03/31/identifying-palindromes/

func arrayPalindrome(n: [Int]) -> Bool {
  var leftIndex = 0
  var rightIndex = n.count-1
  while rightIndex != leftIndex {
    if n[leftIndex] != n[rightIndex] {
      return false
    } else {
      leftIndex++
      rightIndex--
    }
  }
  return true
}

let palin = [1,2,3,4,3,2,1]
let notPalin = [1,2,3,4,5,1,2,3,4,5]

println(arrayPalindrome(palin))
println(arrayPalindrome(notPalin))
