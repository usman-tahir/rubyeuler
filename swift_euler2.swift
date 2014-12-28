// http://projecteuler.net/problem=2

func evenFiboTerms() -> Int {
  var nthCounter = 1
  var accumulator = 0
  var val = fibo(nthCounter)
  while val < 4_000_000 {
    if val % 2 == 0 {
      accumulator += val 
    }
    nthCounter++
    val = fibo(nthCounter)
  }
  return accumulator
}

func fibo(nth:Int) -> Int {
  if nth == 1 || nth == 2 {
    return 1
  } else {
    return fibo(nth-1) + fibo(nth-2)
  }
}

println(evenFiboTerms())
