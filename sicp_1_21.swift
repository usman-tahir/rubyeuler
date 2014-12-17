// find smallest divisor of an int

func square(x:Int) -> Int {
  return x * x
}

func smallestDivisor(x:Int) -> Int {
  return findDivisor(x,2)
}

func findDivisor(n:Int,testDivisor:Int) -> Int {
  if (square(testDivisor) > n) {
    return n
  } else if divides(testDivisor,n) {
    return testDivisor
  } else {
    return findDivisor(n,(testDivisor+1))
  }
}

func divides(a:Int,b:Int) -> Bool {
  return b % a == 0
}

func prime(n:Int) -> Bool {
  return smallestDivisor(n) == n
}

let a = smallestDivisor(199)
let b = smallestDivisor(1999)
let c = smallestDivisor(19999)

println("199's smallest divisor: \(a)")
println("1999's smallest divisor: \(b)")
println("19999's smallest divisor: \(c)")
