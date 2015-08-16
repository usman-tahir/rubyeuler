#!/usr/bin/env swift
// sicp exercise 2.1

func cons(x: Int, y: Int) -> (Int, Int) {
  return (x,y)
}

func car(x: (Int, Int)) -> Int {
  return x.0
}

func cdr(x: (Int, Int)) -> Int {
  return x.1
}

func gcd(a: Int, b:Int) -> Int {
  return b == 0 ? a : gcd(b,a%b)
}

func makeRat(n: Int, d:Int) -> (Int, Int) {
  let g = gcd(n,d)
  return d < 0 ? cons((n * -1)/g, (d * -1)/g) : cons(n/g,d/g)
}

func numer(rat: (Int, Int)) -> Int {
  return car(rat)
}

func denom(rat: (Int, Int)) -> Int {
  return cdr(rat)
}

println(makeRat(3,5))

func addRat(x: (Int,Int), y: (Int,Int)) -> (Int,Int) {
  return makeRat((numer(x) * denom(y)) + (numer(y) * denom(x)), (denom(x) * denom(y)))
}

func subRat(x: (Int,Int), y: (Int,Int)) -> (Int,Int) {
  return makeRat((numer(x) * denom(y)) - (numer(y) * denom(x)), (denom(x) * denom(y)))
}

func mulRat(x: (Int,Int), y: (Int,Int)) -> (Int,Int) {
  return makeRat(numer(x) * numer(y), denom(x) * denom(y))
}

func divRat(x: (Int,Int), y: (Int,Int)) -> (Int,Int) {
  return makeRat(numer(x) * denom(y), denom(x) * numer(y))
}

func equalRat(x: (Int,Int), y: (Int,Int)) -> Bool {
  return (numer(x) * denom(y)) == (numer(y) * denom(x))
}

func printRat(x: (Int,Int)) {
  println("\(numer(x))/\(denom(x))")
}

let a = makeRat(3,10)
let b = makeRat(2,10)
println(addRat(a,b))
println(subRat(a,b))
println(mulRat(a,b))
println(divRat(a,b))
println(equalRat(a,b))

let oneHalf = makeRat(1,2)
printRat(oneHalf)
let oneThird = makeRat(1,3)
printRat(oneThird)

let x = makeRat(-1,5)
let y = makeRat(1,5)
println(mulRat(x,y))
