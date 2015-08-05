#!/usr/bin/env swift
// sicp exercise 1.3

// Exercise 1.3.  Define a procedure that takes three numbers as arguments and returns the sum of 
// the squares of the two larger numbers. 

func sumOfSquaresOfTwoLargerInts(numbers: [Int]) -> Int {
  println(numbers)
  if numbers.count == 2 {
    return numbers.map { square($0) }.reduce(0) { $0 + $1 }
  } else {
    if maxElement(numbers) == minElement(numbers) {
      return sumOfSquaresOfTwoLargerInts([numbers[0],numbers[1]])
    } else {
      let newNumbers = numbers.filter { $0 > minElement(numbers) }
      return sumOfSquaresOfTwoLargerInts(newNumbers)
    }
  }
}

func square(n: Int) -> Int {
  return n * n
}

println(sumOfSquaresOfTwoLargerInts([1,2,3]))
println(sumOfSquaresOfTwoLargerInts([3,3,3]))
