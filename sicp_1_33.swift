#!/usr/bin/env swift
// sicp exercise 1.33

func even(n: Int) -> Bool {
  return n % 2 == 0
}

func square(n: Int) -> Int {
  return n * n
}

func greatestCommonDiv(a: Int, b: Int) -> Int {
  return b == 0 ? a : greatestCommonDiv(b,(a%b))
}

func smallestDivisor(x: Int) -> Int {
  return findDivisor(x,2)
}

func findDivisor(n: Int, t: Int) -> Int {
  return square(t) > n ? n : divides(t,n) ? t : findDivisor(n,t+1)
}

func divides(x: Int, y: Int) -> Bool {
  return y % x == 0
}

func prime(x: Int...) -> Bool {
  return x[0] == smallestDivisor(x[0])
}

func inc(n: Int) -> Int {
  return n + 1
}

func identity<T>(n: T) -> T {
  return n
}

func filteredAccumulate(low: Int, high: Int, nullValue: Int, combiner: ((Int), (Int)) -> (Int), term: (Int) -> (Int), next: (Int) -> (Int), filter: (Int...) -> Bool) -> (Int) {
  if low > high {
    return nullValue
  } else if filter(low,high) {
    return combiner(term(low),filteredAccumulate(next(low),high,nullValue,combiner,term,next,filter))
  } else {
    return filteredAccumulate(next(low),high,nullValue,combiner,term,next,filter)
  }
}

func addCombiner(a: Int, b: Int) -> Int {
  return a + b
}

func multiplyCombiner(a: Int, b: Int) -> Int {
  return a * b
}

func sumPrimeSquaresFrom(low: Int, high: Int) -> Int {
  return filteredAccumulate(low,high,0,addCombiner,square,inc,prime)
}

println(sumPrimeSquaresFrom(1,50000))

func relativelyPrime(numbers: Int...) -> Bool {
  return (greatestCommonDiv(numbers[0],numbers[1]) == 1)
}

func productOfIntsRelativelyPrimeTo(n: Int) -> Int {
  return filteredAccumulate(1,n,1,multiplyCombiner,identity,inc,relativelyPrime)
}

println(productOfIntsRelativelyPrimeTo(20))

// check result of prior function
println([1, 3, 7, 9, 11, 13, 17, 19].reduce(1) { $0 * $1})
