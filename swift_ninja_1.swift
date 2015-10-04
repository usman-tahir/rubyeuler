#!/usr/bin/env swift
// http://www.raywenderlich.com/76349/swift-ninja-part-1

// 1. swap two variables in a single line

func swapVar<T>(inout a: T, inout b: T) {
  (a,b) = (b,a)
}

func printVar<T>(a: T, b: T) {
  print("a = \(a); b = \(b)")
}

var one = 1; var two = 2
printVar(one, b: two)
swapVar(&one, b: &two)
printVar(one, b: two)

// 2. flexStrings function

func flexStrings(a: String = "", b: String = "") -> String {
  return a + b == "" ? "none" : a + b
}

print(flexStrings())
print(flexStrings("One"))
print(flexStrings("One", b: "Two"))

// 3. sumAny

// ...

// 4. countFrom

func countFrom(from: Int, to: Int, s: String = "") -> String {
  return from == to ? s + "\(to)" : countFrom(from+1, to: to, s: s + "\(from)")
}

print(countFrom(1, to: 5))