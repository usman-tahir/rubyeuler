#!/usr/bin/env swift
// sicp exercise 1.28

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

// miller-rabin test and prime functions

func expmod(base: Int, exp: Int, m: Int) -> Int {
  return exp == 0 ? 1 : even(exp) ? millerRabinSquareCheck(expmod(base,(exp/2),m),m) : (base * expmod(base,(exp-1),m)) % m
}

func fastPrime(n: Int, t: Int) -> Bool {
  return t == 0 ? true : millerRabinTest(n) ? fastPrime(n,t-1) : false
}

func prime(n: Int) -> Bool {
  return fastPrime(n,10)
}

func millerRabinSquareCheck(x: Int, m: Int) -> Int {
  return (!((x==1) || ((m-1)==x))) && square(x) % m == 1 ? 0 : (square(x)) % m
}

func millerRabinTest(n: Int) -> Bool {
  return expmod((random(n-2)+2),n-1,n) == 1
}

for carmichaelNumber in [561, 1105, 1729, 2465, 2821, 6601] {
  println(prime(carmichaelNumber))
}

println(prime(982_451_653))
