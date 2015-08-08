#!/usr/bin/env swift
// sicp exercise 1.30

func sum(low: Int, high: Int, term: (Int) -> (Int), next: (Int) -> (Int)) -> Int {
  return sumIter(low, 0, high, term, next)
}

func sumIter(a: Int, result: Int, b: Int, term: (Int) -> (Int), next: (Int) -> (Int)) -> Int {
  return a > b ? result : sumIter(next(a), (term(a)+result), b, term, next)
}

func inc(n: Int) -> Int {
  return n + 1
}

func cube(n: Int) -> Int {
  return (n * n * n)
}

func sumCubes(a: Int, b: Int) -> Int {
  return sum(a, b, cube, inc)
}

println(sumCubes(1,10))
