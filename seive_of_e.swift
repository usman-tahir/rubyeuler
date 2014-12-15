// http://rosettacode.org/wiki/Sieve_of_Eratosthenes

func find_primes_upto(number:Int) -> [Int] {
  var primes = [Int](2...number)
  for var index = 0; index < primes.count; index++ {
    for var jindex = index+1; jindex < primes.count; jindex++ {
      if primes[jindex] % primes[index] == 0 {
        primes.removeAtIndex(jindex)
      }
    }
  }
  return primes
}

println(find_primes_upto(1000))
