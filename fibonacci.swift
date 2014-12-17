// http://rosettacode.org/wiki/Fibonacci_sequence

func fibonacci(n:Int) -> Int {
  if (n == 0) {
    return 1
  } else if (n == 1) {
    return 1
  } else {
    return fibonacci(n-1) + fibonacci(n-2)
  }
}

for var i = 0; i < 10; i++ {
  let j = fibonacci(i)
  println(j)
}
