#!/usr/bin/env swift
// http://rosettacode.org/wiki/Balanced_brackets

func balanced(s: String) -> Bool {
  var balance = 0
  for c in s.characters {
    balance += String(c) == "[" ? 1 : String(c) == "]" ? -1 : 0
    if balance < 0 { return false }
  }
  return (balance == 0)
}

var zero = "[" // false
var one = "[]" // true
var two = "][" // false
var three = "[][]" // true
var four = "][][" // false
var five = "[[][]]" // true
var six = "[]][[]" // false

for e in [zero,one,two,three,four,five,six] { print(balanced(e)) }