// http://rosettacode.org/wiki/Factors_of_an_integer

func factors(n:Int) -> [Int] {
  var factors:[Int] = []
  for var factor = 1; factor <= n; factor++ {
    if n % factor == 0 {
      factors.append(factor)
    }
  }
  return factors
}

println(factors(1024))
