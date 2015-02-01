// http://rosettacode.org/wiki/Happy_numbers

func happy(n:Int) -> Bool {
  var result = sumSquareDigits(n,0)
  while (result != 89) && (result != 1) {
    result = sumSquareDigits(result,0)
  }
  if result == 1 {
    return true
  }
  return false
}

func sumSquareDigits(n:Int,accumulator:Int) -> Int {
  var mutableAccumulator = accumulator
  if n < 10 {
    return mutableAccumulator + (n * n)
  } else {
    return ((n % 10) * (n % 10)) + sumSquareDigits(n/10,(mutableAccumulator))
  }
}

var happyNumbers:[Int] = []
var counter = 1
while happyNumbers.count < 8 {
  if happy(counter) {
    happyNumbers.append(counter)
  }
  counter++
}

println(happyNumbers)
