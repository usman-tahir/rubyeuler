// http://rosettacode.org/wiki/Ethiopian_multiplication

func halve(n:Int) -> Int {
  return n / 2
}

func double(n:Int) -> Int {
  return n * 2
}

func even(n:Int) -> Bool {
  return n % 2 == 0
}

func ethiopianMultiplication(m:Int,n:Int,accumulator:Int) -> Int {
  var newAccumulator = accumulator
  if !even(m) {
    newAccumulator = newAccumulator + n
  }
  if m == 1 {
    return newAccumulator
  } else {
    return ethiopianMultiplication(halve(m),double(n),newAccumulator)
  }
}

println(ethiopianMultiplication(17,34,0))
println(ethiopianMultiplication(4,4,0))
println(ethiopianMultiplication(20,5,0))
