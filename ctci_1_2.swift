#!/usr/bin/env swift
// cracking the coding interview q 1.2

import Foundation

func reverseString(n: String) -> String {
  var resultString: NSMutableString = ""
  for index in 0..<count(n) {
    let c = String(n[advance(n.startIndex,index)])
    resultString.insertString(c, atIndex: 0)
  }
  return resultString as String
}

println(reverseString("Hello World"))