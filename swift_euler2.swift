// http://projecteuler.net/problem=2

func evenFiboTerms() -> Int {
  var nthCounter = 1
  var accumulator = 0
  while fibo(nthCounter) < 4_000_000 {
    let val = fibo(nthCounter)
    if val % 2 == 0 {
      accumulator += val 
    }
    nthCounter++
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
