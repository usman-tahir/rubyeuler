// http://rosettacode.org/wiki/Mutual_recursion

func f(n:Int) -> Int {
  if (n == 0) {
    return 1
  } else {
    return (n - m(f(n-1)))
  }
}

func m(n:Int) -> Int {
  if (n == 0) {
    return 0
  } else {
    return (n - f(m(n-1)))
  }
}

for var i = 0; i < 13; i++ {
  let j = f(i)
  let k = m(i)
  println("\(j) : \(k)")
}
