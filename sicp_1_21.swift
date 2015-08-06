#!/usr/bin/env swift
// sicp exercise 1.21

func square(x: Int) -> Int {
  return x * x
}

func smallestDivisor(x: Int) -> Int {
  return findDivisor(x,2)
}

func findDivisor(n: Int, t: Int) -> Int {
  return square(t) > n ? n : divides(t,n) ? t : findDivisor(n,(t+1))
}

func divides(a: Int, b: Int) -> Bool {
  return b % a == 0
}

func prime(n: Int) -> Bool {
  return smallestDivisor(n) == n
}

println(smallestDivisor(199))
println(smallestDivisor(1999))
println(smallestDivisor(19999))
