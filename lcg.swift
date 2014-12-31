// http://rosettacode.org/wiki/Linear_congruential_generator

class LCG {

  var seed:Int
  
  init(seed:Int) {
    self.seed = seed
  }

}

class BSDRand:LCG {

  let a = 1103515245
  let c = 12345
  let m = 2147483648

  func random() -> Int {
    seed = (a * seed + c) % m
    return seed
  }

}

class MSRand:LCG {

  let a = 214013
  let c = 2531011
  let m = 2147483648
  let denom = 65536

  func random() -> [Int] {
    seed = (a * seed + c) % m
    return [(seed/denom),seed]
  }
}

var seed:Int = 0
for var i = 0; i < 10; i++ {
  let rand = BSDRand(seed:seed)
  seed = rand.random()
  println(seed)
}

var seed2:Int = 0
for var i = 0; i < 10; i++ {
  let rand = MSRand(seed:seed2)
  let randPlusSeed = rand.random()
  println(randPlusSeed[0])
  seed2 = randPlusSeed[1]
}
