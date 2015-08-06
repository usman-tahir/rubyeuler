#!/usr/bin/env swift
// sicp exercise 1.16

func square(x: Int) -> Int {
  return x * x
}

func even(x: Int) -> Bool {
  return x % 2 == 0
}

func fastExpt(b: Int, n: Int) -> Int {
  return fastExptIter(b,n,1)
}

func fastExptIter(b: Int, counter: Int, prod: Int) -> Int {
  return counter == 0 ? prod : even(counter) ? fastExptIter(square(b),(counter/2),prod) : fastExptIter(b,(counter-1),(b*prod))
}

println(fastExpt(3,2))
println(fastExpt(3,3))
