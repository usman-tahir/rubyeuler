#!/usr/bin/env swift
// http://rosettacode.org/wiki/General_FizzBuzz

func generalFizzBuzz(max: Int, factorOne: (Int, String), factorTwo: (Int, String), factorThree: (Int,String)) {
  for i in 0...max {
    if i % factorThree.0 == 0 {
      println(factorThree.1)
    } else if i % factorTwo.0 == 0 {
      println(factorTwo.1)
    } else if i % factorOne.0 == 0 {
      println(factorOne.1)
    } else {
      println(i)
    }
  }
}

generalFizzBuzz(20,(3,"Fizz"),(5,"Buzz"),(7,"Baxx"))
