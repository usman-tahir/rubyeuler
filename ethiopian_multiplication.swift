// http://rosettacode.org/wiki/Ethiopian_multiplication

func halve(n:Int) -> Int {
  return n / 2
}

func double(n:Int) -> Int {
  return n * 2
}

func even(n:Int) -> Bool {
  return n % 2 == 0
}

func ethiopianMultiplication(m:Int,n:Int,counter:Int,count:Int) -> Int {
  var newCounter = counter
  if count == 0 && !even(m) {
    newCounter = counter + n
  }
  if m == 1 {
    return newCounter + n
  } else {
    if !even(double(n)) {
      newCounter = newCounter + double(n)
    }
    return ethiopianMultiplication(halve(m),double(n),newCounter,count+1)
  }
}

func eMult(x:Int,y:Int) -> Int {
  return ethiopianMultiplication(x,y,0,0)
}

println(eMult(17,34))
println(eMult(4,4))
