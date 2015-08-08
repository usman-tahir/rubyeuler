#!/usr/bin/env swift
// sicp exercise 1.33

import Foundation

// prime checker with Miller-Rabin test

// building primitives
func even(n: Int) -> Bool {
  return n % 2 == 0
}

func square(n: Int) -> Int {
  return n * n
}

func greatestCommonDiv(a:Int,b:Int) -> Int {
  return b == 0 ? a : greatestCommonDiv(b,(a%b))
}

func random(n: Int) -> Int {
  return Int(arc4random_uniform(UInt32(n)))
}

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

func prime(n: Int...) -> Bool {
  return fastPrime(n[0],10)
}

// filtered-accumulate procedures

func inc(n: Int) -> Int {
  return n + 1
}

func identity(n: Int) -> Int {
  return n
}

func filteredAccumulate(low: Int, high: Int, nullValue: Int, combiner: ((Int), (Int)) -> (Int), term: (Int) -> (Int), next: (Int) -> (Int), filter: (Int...) -> Bool) -> (Int) {
  if low > high {
    return nullValue
  } else if filter(low) {
    return combiner(term(low),filteredAccumulate(next(low),high,nullValue,combiner,term,next,filter))
  } else {
    return filteredAccumulate(next(low),high,nullValue,combiner,term,next,filter)
  }
}

func addCombiner(a: Int, b: Int) -> Int {
  return a + b
}

func multiplyCombiner(a: Int, b: Int) -> Int {
  return a * b
}

func sumPrimeSquaresFrom(low: Int, high: Int) -> Int {
  return filteredAccumulate(low,high,0,addCombiner,square,inc,prime)
}

println(sumPrimeSquaresFrom(1,50000))
