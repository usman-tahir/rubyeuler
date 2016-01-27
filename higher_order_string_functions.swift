#!/usr/bin/env swift
// http://programmingpraxis.com/2016/01/26/higher-order-string-functions/

import Foundation

func stringMap(str: String, proc: (String) -> (String)) -> String {
  var char = [String]()
  for c in str.characters { char.append(proc(String(c))) }
  return char.joinWithSeparator("")
}

func stringFold(str: String, base: String, proc: (String) -> (String)) -> String {
  var newBase: String = base
  for c in str.characters { newBase += proc(String(c)) }
  return newBase
}

func upcase(s: String) -> String {
  return s.uppercaseString
}

func inOutUpcase(inout s: String) {
  s = s.uppercaseString
}

var l = "abcdefghijklmnopq"
print(stringMap(l, proc: upcase))
print(stringFold(l, base: "zqewrty", proc: upcase))
