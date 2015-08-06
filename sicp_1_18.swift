#!/usr/bin/env swift
// sicp exercise 1.18

func even(x: Int) -> Bool {
  return x % 2 == 0
}

func doubleInt(x: Int) -> Int {
  return x + x
}

func halveInt(x: Int) -> Int {
  return x / 2
}

func fastMultiplication(x: Int, y: Int) -> Int {
  return multiIter(x,y,0)
}

func multiIter(x: Int, y: Int, counter: Int) -> Int {
  return y == 0 ? counter : even(y) ? multiIter((doubleInt(x)),(halveInt(y)),(counter)) : multiIter(x,(y-1),(counter+x))
}

println(fastMultiplication(5,5))
println(fastMultiplication(7,9))
println(fastMultiplication(10,10))
println(fastMultiplication(12,12))
