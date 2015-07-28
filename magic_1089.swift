#!/usr/bin/env swift
// http://programmingpraxis.com/2014/10/03/magic-1089/

func decreasing(number: Int) -> Bool {
  let t = Array(String(number)).map({ String($0).toInt()! })
  return t == t.sorted { $0 > $1 }
}

func reverseNumber(number: Int) -> Int {
  return String(Array(String(number)).reverse()).toInt()!
}

func reverseDifference(n: Int) -> Int {
  return decreasing(n) ? ((n - reverseNumber(n)) + (reverseNumber(n - reverseNumber(n)))) : 0
}

for val in [532, 235, 854, 1234] {
  println(reverseDifference(val))
}
