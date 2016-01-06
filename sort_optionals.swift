#!/usr/bin/env swift

import Foundation

var a: Int?
var b: Int?
var c: Int?
var d: Int?
var e: Int?
var f: Int?
var g: Int?
var h: Int?
var i: Int?
var j: Int?
var k: Int?
var l: Int?
var m: Int?

var optionalsArray = [a,b,c,d,e,f,g,h,i,j,k,l,m]

for i in 0..<optionalsArray.count {
  if (i % 2 == 1) { optionalsArray[i] = Int(arc4random_uniform(100))}
}

func sortOptionalInts(a: Int?, b: Int?) -> Bool {
  guard a != nil && b != nil else { return true }
  if let a = a {
    if let b = b {
      return a < b
    } else {
      return true
    }
  } else {
    return false
  }
}

let sortedArray = optionalsArray.sort(sortOptionalInts)
print(sortedArray)

