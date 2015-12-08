#!/usr/bin/env swift
// http://rosettacode.org/wiki/String_prepend

import Foundation

func prependString(str: String, pre: String) -> String {
  return pre.stringByAppendingString(str)
}

let s = "my string"
let p = "changed "
print(prependString(s, pre: p))
