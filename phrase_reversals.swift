#!/usr/bin/env swift
// http://rosettacode.org/wiki/Phrase_reversals

import Foundation

func phraseReversal(s: String) -> (String, String, String) {
  let a = String(s.characters.reverse())
  let b = s.characters.split { $0 == " " }.map(String.init).map { String($0.characters.reverse()) }.joinWithSeparator(" ")
  let c = s.characters.split { $0 == " " }.map(String.init).reverse().joinWithSeparator(" ")
  return (a, b, c)
}

let t = "rosetta code phrase reversal"
print(phraseReversal(t))
