func square(n:Int) -> Int {
  return n * n
}

func divides(x:Int,y:Int) -> Bool {
  return y % x == 0
}

func smallestDivisor(n:Int) -> Int {
  return findDivisor(n,2)
}

func findDivisor(n:Int,testDivisor:Int) -> Int {
  if square(testDivisor) > n {
    return n
  } else if divides(testDivisor,n) {
    return testDivisor
  } else {
    return findDivisor(n,testDivisor+1)
  }
}

func isPrime(n:Int) -> Bool {
  return smallestDivisor(n) == n
}

for var i = 1; i <= 50; i++ {
  let x = isPrime(i)
  println("\(i) is prime: \(x)")
}
