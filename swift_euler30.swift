func digits(n:Int) -> [Int] {
  var val = n
  var digits:[Int] = []
  while val > 0 {
    digits.append(val % 10)
    val /= 10
  }
  return digits
}

func pow(base:Int,power:Int) -> Int {
  if power == 0 {
    return 1
  } else {
    return base * pow(base,power-1)
  }
}

var accumulator = 0
for var i = 2; i < 400000; i++ {
  let val = digits(i).map { (digit) in pow(digit,5) }.reduce(0,+)
  if i == val {
    accumulator += i
  }
}  
println(accumulator)
