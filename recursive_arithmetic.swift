func isZero(x:Int) -> Bool {
  return x == 0
}

func succ(x:Int) -> Int {
  return x+1
}

func pred(x:Int) -> Int {
  return x-1
}

func add(x:Int,y:Int) -> Int {
  if isZero(y) {
    return x
  } else if isZero(x) {
    return y
  } else {
    let y = pred(y)
    let x = succ(x)
    return add(x,y)
  }
}

func subtract(x:Int,y:Int) -> Int {
  if isZero(y) {
    return x
  } else {
    let x = pred(x)
    let y = pred(y)
    return subtract(x,y)
  }
}

func multiply(x:Int,y:Int) -> Int {
  if isZero(y) {
    return 0
  } else if isZero(pred(y)) {
    return x
  } else {
    return add(multiply(x,pred(y)),x)
  }
}

func divide(x:Int,y:Int) -> Int {
  if isZero(y) || isZero(x) {
    return 0
  } else if subtract(x,y) < y {
    return 1
  } else {
    return succ(divide(x-y,y))
  }
}  

func modulus(x:Int,y:Int) -> Int {
  return subtract(x,(multiply(y,(divide(x,y)))))
}

func power(x:Int,y:Int) -> Int {
  if isZero(y) {
    return 1
  } else {
    return multiply(x,(power(x,pred(y))))
  }
}

println(add(5,20))
println(subtract(20,5))
println(multiply(20,5))
println(divide(20,5))
println(modulus(10,7))
println(power(5,5))
