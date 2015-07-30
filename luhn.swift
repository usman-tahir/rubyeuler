#!/usr/bin/env swift
// http://rosettacode.org/wiki/Luhn_test_of_credit_card_numbers

func checkSum(n:Int) -> Bool {
  var checkArray = split(n)
  var s1:Int = 0
  var s2:Int = 0
  for var i = 0; i < checkArray.count; i++ {
    if i % 2 == 0 {
      s1 += checkArray[i]
    }
  }
  for var i = 1; i < checkArray.count; i++ {
    if i % 2 == 1 {
      let evenDigits = checkArray[i] * 2
      if evenDigits < 10 {
        s2 += evenDigits
      } else {
        s2 = s2 + sum(split(evenDigits))
      }
    }
  }
  return (s1 + s2) % 10 == 0
}

func split(n:Int) -> [Int] {
  return reverse(Array(String(n))).map { "\($0)".toInt()! }
}

func sum(array:[Int]) -> Int {
  return array.reduce(0) { $0 + $1 }
}

for number in [49927398716, 49927398717, 
                            1234567812345678, 1234567812345670] {
  println("\(number): \(checkSum(number))")
}
