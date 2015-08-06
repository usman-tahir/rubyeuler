#!/usr/bin/env swift
// sicp exercise 1.19

func even(x: Int) -> Bool {
  return x % 2 == 0
}

func square(x: Int) -> Int {
  return x * x
}

func fib(n: Int) -> Int {
  return fibIter(1,0,0,1,n)
}

func fibIter(a: Int, b: Int, p: Int, q: Int, count: Int) -> Int {
  if count == 0 {
    return b
  } else if even(count) {
    return fibIter(a,b,(square(p)+square(q)),(square(q)+(2*p*q)),(count/2))
  } else {
    return fibIter((b*q)+(a*q)+(a*p),((b*p)+(a*q)),p,q,(count-1))
  }
}

for i in 1..<20 {
  print("\(fib(i)), ")
}
println()
