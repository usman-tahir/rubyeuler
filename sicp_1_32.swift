#!/usr/bin/env swift
// sicp exercise 1.32

func inc(n: Int) -> Int {
  return n + 1
}

func identity(n: Int) -> Int {
  return n
}

func accumulate(low: Int, high: Int, nullValue: Int, combiner: ((Int), (Int)) -> (Int), term: (Int) -> (Int), next: (Int) -> (Int)) -> (Int) {
  return low > high ? nullValue : combiner(term(low),accumulate(next(low),high,nullValue,combiner,term,next))
}

func addCombiner(a: Int, b: Int) -> Int {
  return a + b
}

func multiplyCombiner(a: Int, b: Int) -> Int {
  return a * b
}

func factorial(n: Int) -> Int {
  return (n == 0 || n == 1) ? 1 : accumulate(1,n,1,multiplyCombiner,identity,inc)
}

println(factorial(5))

func cube(n: Int) -> Int {
  return n * n * n
}

func sumCubes(low: Int, high: Int) -> Int {
  return accumulate(low,high,0,addCombiner,cube,inc)
}

println(sumCubes(1,10))
