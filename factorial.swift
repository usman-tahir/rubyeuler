func factorial(number: Int) -> Int {
  return number == 0 ? 1 : number * factorial(number-1)
}

for number in 1...10 {
  println(factorial(number))
}

