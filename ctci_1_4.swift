#!/usr/bin/env swift
// cracking the coding interview q 1.4

func replaceSpaces(n: String) -> String {
  var resultString = ""
  for index in 0..<count(n) {
    let c = n[advance(n.startIndex,index)]
    resultString += c == " " ? "%20" : String(c)
  }
  return resultString
}

println(replaceSpaces("Hello World"))
