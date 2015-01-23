// http://rosettacode.org/wiki/Primality_by_trial_division

func isPrime(n:Int) -> Bool {
  for var i = 3; i < n; i = i + 2 {
    if n % i == 0 {
      return false
    }
  }
  return true
}

println(isPrime(37))
println(isPrime(38))
println(isPrime(39))
