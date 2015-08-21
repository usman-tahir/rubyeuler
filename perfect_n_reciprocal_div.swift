#!/usr/bin/env swift
// https://twitter.com/AlgebraFact/status/634469803114283008
// Let n be a perfect number. Then the reciprocals of n's divisors sum to 2.

func cons(x: Int, y: Int) -> (Int,Int) {
  return (x,y)
}

func gcd(a: Int, b: Int) -> Int {
  return b == 0 ? a : gcd(b,a%b)
}

func makeRat(n: Int, d: Int) -> (Int, Int) {
  let g = gcd(n,d)
  return d < 0 ? cons((n * -1)/g, (d * -1)/g) : cons(n/g,d/g)
}

func reciprocal(n: Int) -> (Int,Int) {
  return makeRat(1,n)
}

func sumFractions(one: (Int,Int), two: (Int,Int)) -> (Int,Int) {
  let numerator = (one.0 * two.1) + (one.1 * two.0)
  let denominator = (one.1 * two.1)
  return makeRat(numerator,denominator)
}

func slowFindDivisors(n: Int) -> [Int] {
  var div: [Int] = []
  for i in 1...n {
    if n % i == 0 {
      div.append(i)
    }
  }
  return div
}

func findReciprocals(n: Int) -> [(Int,Int)] {
  var reciprocals: [(Int,Int)] = []
  for d in slowFindDivisors(n) {
    reciprocals.append(reciprocal(d))
  }
  return reciprocals
}

func sumReciprocalsArray(array: [(Int,Int)]) -> (Int,Int) {
  var accumulator = array[0]
  for i in 1..<array.count {
    accumulator = sumFractions(accumulator,array[i])
  }
  return accumulator
}

for perfect in [6,28,496,8128] {
  let f = findReciprocals(perfect)
  println(sumReciprocalsArray(f))
}
