// http://rosettacode.org/wiki/Sieve_of_Eratosthenes

func find_primes_upto(number:Int) -> [Int] {
  var primes = [Int](2...number)
  for var i = 0; i < primes.count; i++ {
    for var j = i+1; j < primes.count; j++ {
      if primes[j] % primes[i] == 0 {
        primes.removeAtIndex(j)
      }
    }
  }
  return primes
}

println(find_primes_upto(1000))
