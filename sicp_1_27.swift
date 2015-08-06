#!/usr/bin/env swift 
// sicp exercise 1.27

import Foundation

// building primitives
func even(n: Int) -> Bool {
  return n % 2 == 0
}

func square(n: Int) -> Int {
  return n * n
}

func random(n: Int) -> Int {
  return Int(arc4random_uniform(UInt32(n)))
}

// fermat test and prime functions

func expmod(base: Int, exp: Int, m: Int) -> Int {
  return exp == 0 ? 1 : even(exp) ? (square(expmod(base,(exp/2),m)) % m) : (base * expmod(base,(exp-1),m)) % m
}

func fermatTest(n: Int) -> Bool {
  let a = (random(n-1)+1)
  return expmod(a,n,n) == a
}

func fastPrime(n: Int, t: Int) -> Bool {
  return (t == 0) ? true : fermatTest(n) ? fastPrime(n,t-1) : false
}

func prime(n: Int) -> Bool {
  return fastPrime(n,10)
}

for carmichaelNumber in [561, 1105, 1729, 2465, 2821, 6601] {
  println(prime(carmichaelNumber))
}
