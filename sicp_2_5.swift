#!/usr/bin/env swift
// sicp exercise 2.5

import Foundation

func intPow(base: Int, exp: Int) -> Int {
  return Int(pow(Double(base),Double(exp)))
}

func weirdCons(a: Int, b: Int) -> Int {
  return intPow(2,a) * intPow(3,b)
}

func weirdCar(n: Int, count: Int = 0) -> Int {
  return n % 2 != 0 ? count : weirdCar(n/2, count: count+1)
}

func weirdCons(n: Int, count: Int = 0) -> Int {
  return n % 3 != 0 ? count : weirdCons(n/3, count: count+1)
}

let testVal = weirdCons(2,5)
println(testVal)
println(weirdCar(testVal))
println(weirdCons(testVal))
