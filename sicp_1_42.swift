#!/usr/bin/env swift
// sicp exercise 1.42

func compose(x: Int, f: (Int) -> (Int), g: (Int) -> (Int)) -> Int {
  return f(g(x))
}

func inc(n: Int) -> Int {
  return n + 1
}

func square(n: Int) -> Int {
  return n * n
}

println(compose(6,square,inc))