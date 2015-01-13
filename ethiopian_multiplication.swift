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
  if count == 0 {
    newCounter = counter + n
  }
  var newCount = count + 1
  if m == 1 {
    return newCounter + n
  } else {
    let x = halve(m)
    let y = double(n)
    if y % 2 != 0 {
      newCounter = newCounter + y
    }
    return ethiopianMultiplication(x,y,newCounter,newCount)
  }
}

func eMult(x:Int,y:Int) -> Int {
  return ethiopianMultiplication(x,y,0,0)
}

println(eMult(17,34))
println(eMult(3,4))
