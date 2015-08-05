#!/usr/bin/env swift
// sicp exercise 1.11

// computes f(n) with recursive process
func recursiveF(n: Int) -> Int {
  return n < 3 ? n : (recursiveF(n-1) + (2 * recursiveF(n-2)) + (3 * recursiveF(n-3)))
}

// computes f(n) with iterative process
func iterativeF(n: Int) -> Int {
  return n < 3 ? n : iterativeFiter(2,1,0,n)
}

func iterativeFiter(a: Int, b: Int, c: Int, count: Int) -> Int {
  return count < 3 ? a : iterativeFiter((a + (2 * b) + (3 * c)), a, b, count-1)
}

println(recursiveF(5))
println(iterativeF(5))
