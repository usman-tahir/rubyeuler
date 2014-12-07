// https://projecteuler.net/problem=6

func square(number: Int) -> Int {
  return number * number
}

func sumSquares(limit: Int) -> Int {
  var accumulator = 0
  for var counter = 1; counter <= limit; ++counter {
    accumulator = accumulator + square(counter)
  }
  return accumulator
}

func squareSums(limit: Int) -> Int {
  var accumulator = 0
  for var counter = 1; counter <= limit; ++counter {
    accumulator = accumulator + counter
  }
  return square(accumulator)
}  

func sumSquareDiff(limit: Int) -> Int {
  return squareSums(limit) - sumSquares(limit)
}

println(sumSquareDiff(100))

