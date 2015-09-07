#!/usr/bin/env swift
// sicp exercise 2.19

func noMore(coinValues: [Int]) -> Bool {
  return coinValues == [] ? true : false
}

func firstDenomination(n: [Int]) -> Int {
  return n[0]
}

func exceptFirstDenomination(n: [Int]) -> [Int] {
  var newN = n
  newN.removeAtIndex(0)
  return newN
}

func cc(amount: Int, coinValues: [Int]) -> Int {
  if amount == 0 {
    return 1
  } else if (amount < 0) || (noMore(coinValues)) {
    return 0
  } else {
    return cc(amount, exceptFirstDenomination(coinValues)) + cc(amount-firstDenomination(coinValues), coinValues)
  }
}

func countChange(amount: Int, coinValues: [Int]) -> Int {
  return cc(amount, coinValues)
}

let usCoins = [50,25,10,5,1]
let ukCoins = [100,50,20,10,5,2,1]

println(countChange(100,usCoins))
println(countChange(100,ukCoins))
