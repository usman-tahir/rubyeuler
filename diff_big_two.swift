#!/usr/bin/env swift
// http://www.codewars.com/kata/difference-between-biggest-2-numbers

func diffBig2(n: [Int]) -> Int {
  var largestN = n[0]
  var secondLargestN = n[1]
  if n[1] > n[0] { largestN = n[1]; secondLargestN = n[0] }
  for i in 2..<count(n) {
    if n[i] < largestN && n[i] > secondLargestN {
      secondLargestN = n[i]
    } else if n[i] > largestN {
      secondLargestN = largestN
      largestN = n[i]
    }
  }
  return largestN - secondLargestN
}

println(diffBig2([10,5,2]))
