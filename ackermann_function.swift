// http://rosettacode.org/wiki/Ackermann_function

func ackermann(m:Int,n:Int) -> Int {
  if m == 0 {
    return n + 1
  } else if m > 0 && n == 0 {
    return ackermann(m-1,1)
  } else if m > 0 && n > 0 {
    return ackermann(m-1,(ackermann(m,n-1)))
  } else {
    return -10
  }
}

for var m = 0; m < 4; m++ {
  for var n = 0; n < 4; n++ {
    let result = ackermann(m,n)
    println("\(m), \(n): \(result)")
  }
}