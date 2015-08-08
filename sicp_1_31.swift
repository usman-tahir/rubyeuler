#!/usr/bin/env swift
// sicp exercise 1.31

// building primitives

func inc(n: Int) -> Int {
  return n + 1
}

func identity(n: Int) -> Int {
  return n
}

// linear recursive

func product(low: Int, high: Int, term: (Int) -> (Int), next: (Int) -> (Int)) -> Int {
  return low > high ? 1 : term(low) * product(next(low),high,term,next)
}

func factorial(n: Int) -> Int {
  return (n == 0 || n == 1) ? 1 : product(1,n,identity,inc)
}

println(factorial(5))

// linear iterative

func iterativeProduct(low: Int, high: Int, term: (Int) -> (Int), next: (Int) -> (Int)) -> Int {
  return iterativeProductIter(low,1,high,term,next)
}

func iterativeProductIter(a: Int, result: Int, b: Int, term: (Int) -> (Int), next: (Int) -> (Int)) -> Int {
  return a > b ? result : iterativeProductIter(next(a), (term(a) * result), b, term, next)
}

func iterativeFactorial(n: Int) -> Int {
  return (n == 0 || n == 1) ? 1 : iterativeProduct(1,n,identity,inc)
}

println(iterativeFactorial(5))
