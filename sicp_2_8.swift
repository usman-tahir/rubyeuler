#!/usr/bin/env swift
// sicp exercise 2.8
// https://en.wikipedia.org/wiki/Interval_arithmetic

func car<T>(a: (T,T)) -> T {
  return a.0
}

func cdr<T>(a: (T,T)) -> T {
  return a.1
}

func cons<T>(a: T, b: T) -> (T,T) {
  return (a,b)
}

func makeInterval<T>(a: T, b: T) -> (T,T) {
  return cons(a,b)
}

func lowerBound<T>(a: (T,T)) -> T {
  return car(a)
}

func upperBound<T>(a: (T,T)) -> T {
  return cdr(a)
}

func addInterval(x: (Double,Double), y: (Double,Double)) -> (Double,Double) {
  return makeInterval((lowerBound(x)) + (lowerBound(y)), (upperBound(x) + upperBound(y)))
}

func mulInterval(x: (Double,Double), y: (Double,Double)) -> (Double,Double) {
  let p1 = lowerBound(x) * lowerBound(y)
  let p2 = lowerBound(x) * upperBound(y)
  let p3 = upperBound(x) * lowerBound(y)
  let p4 = upperBound(x) * upperBound(y)
  return makeInterval(min(p1,p2,p3,p4), max(p1,p2,p3,p4))
}

func divInterval(x: (Double,Double), y: (Double,Double)) -> (Double,Double) {
  return mulInterval(x,makeInterval(1.0/upperBound(y),1.0/lowerBound(y)))
}

func subInterval(x: (Double,Double), y: (Double,Double)) -> (Double,Double) {
  let a = upperBound(x) - lowerBound(y)
  let b = lowerBound(x) - upperBound(y)
  return a < b ? makeInterval(a,b) : makeInterval(b,a)
}

let x = makeInterval(1.0,5.0)
let y = makeInterval(3.0,20.0)
println(addInterval(x,y))
println(mulInterval(x,y))
println(divInterval(x,y))
println(subInterval(x,y))
