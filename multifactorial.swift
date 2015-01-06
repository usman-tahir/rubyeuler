// http://rosettacode.org/wiki/Multifactorial

func multifactorial(n:Int,degree:Int) -> Int {
  if n <= 1 {
    return 1
  } else {
    return (n * multifactorial(n-degree,degree))
  }
}

for var d = 1; d <= 5; d++ {
  for var n = 1; n <= 10; n++ {
    println(multifactorial(n,d))
  }
}
