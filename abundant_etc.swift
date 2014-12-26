// http://rosettacode.org/wiki/Abundant,_deficient_and_perfect_number_classifications

func findDivisors(n:Int) -> [Int] {
  var divisors:[Int] = []
  for var i = 1; i < n; i++ {
    if n % i == 0 {
      divisors.append(i)
    }
  }
  return divisors
}

func classify(n:Int) -> Int {
  if findDivisors(n).reduce(0,+) < n {
    return -1
  } else if findDivisors(n).reduce(0,+) == n {
    return 0
  } else if findDivisors(n).reduce(0,+) > n {
    return 1
  } else {
    return 5
  }
}

var deficients:[Int] = []
var abundants:[Int] = []
var perfects:[Int] = []
for var i = 1; i <= 20000; i++ {
  let kind = classify(i)
  if kind == -1 {
    deficients.append(i)
  } else if kind == 1 {
    abundants.append(i)
  } else if kind == 0 {
    perfects.append(i)
  }
}

println(deficients.count)
println(perfects.count)
println(abundants.count)
