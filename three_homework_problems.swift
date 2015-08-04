#!/usr/bin/env swift
// http://programmingpraxis.com/2015/08/04/three-homework-problems/

func sumOfSquaresOfTwoLargestInts(one: Int, two: Int, three: Int) -> Int {
  let numbers = [one,two,three]
  if maxElement(numbers) == minElement(numbers) {
    return numbers[1...2].map { square($0) }.reduce(0) { $0 + $1 }
  } else {
    return numbers.filter { $0 != minElement(numbers) }.map { square($0) }.reduce(0) { $0 + $1 }
  }
}

func square(n: Int) -> Int {
  return n * n
}

func isBaseTenPalindrome(n: Int) -> Bool {
  return n % 10 == 0 ? false : n == String(reverse("\(n)")).toInt()!
}

println(sumOfSquaresOfTwoLargestInts(1,2,3))
println(sumOfSquaresOfTwoLargestInts(2,1,3))
println(sumOfSquaresOfTwoLargestInts(3,1,2))
println(sumOfSquaresOfTwoLargestInts(3,3,3))
println(isBaseTenPalindrome(432))
