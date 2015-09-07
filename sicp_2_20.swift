#!/usr/bin/env swift
// sicp exercise 2.20

func sameParity(numbers: Int...) -> [Int] {
  var results: [Int] = []
  var parity = numbers[0] % 2
  for n in numbers {
    if n % 2 == parity {
      results.append(n)
    }
  }
  return results
}

println(sameParity(1,2,3,4,5,6,7))
println(sameParity(2,3,4,5,6,7))
