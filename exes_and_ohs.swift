#!/usr/bin/env swift
// http://www.codewars.com/kata/55908aad6620c066bc00002a

import Foundation

func xo(s: String) -> Bool {
  let c = s.characters.map { String($0).lowercaseString }
  let oh = c.filter { $0 == "o" }.count
  let ex = c.filter { $0 == "x" }.count
  return oh == ex
}

print(xo("xo"))
print(xo("xxOo"))
print(xo("xxxm"))
print(xo("Oo"))
print(xo("oomxx"))
