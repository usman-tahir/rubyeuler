func hailstone(nth:Int, counter:Int) -> Int {
  if nth == 1 {
    return counter
  } else if nth % 2 == 0 {
    return hailstone(nth/2,counter+1)
  } else {
    return hailstone(((3*nth)+1),counter+1)
  }
}

var value = 1
for var i = 1; i <= 100_000; i++ {
  if hailstone(i,1) > hailstone(value,1) {
    value = i
  }
}

println(value)
