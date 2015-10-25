#!/usr/bin/env swift
// http://rosettacode.org/wiki/Linear_congruential_generator

class LCG {

  var seed: Int
  
  init(seed: Int) {
    self.seed = seed
  }

}

class BSDRand: LCG {

  let a = 1103515245
  let c = 12345
  let m = 2147483648

  func random() -> Int {
    return (a * seed + c) % m
  }

}

class MSRand: LCG {

  let a = 214013
  let c = 2531011
  let m = 2147483648
  let denom = 65536

  func random() -> [Int] {
    seed = (a * seed + c) % m
    return [(seed/denom),seed]
  }
}

var seed: Int = 0
for i in 0..<10 {
  let rand = BSDRand(seed: seed)
  seed = rand.random()
  print(seed)
}

var seed2: Int = 0
for i in 0..<10 {
  let rand = MSRand(seed: seed2)
  let randPlusSeed = rand.random()
  print(randPlusSeed[0])
  seed2 = randPlusSeed[1]
}
