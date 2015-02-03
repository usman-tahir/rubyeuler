// http://rosettacode.org/wiki/Exponentiaton_operator

func pred(n:Int) -> Int {
  return n - 1
}

func succ(n:Int) -> Int {
  return n + 1
}

func add(x:Int,y:Int) -> Int {
  if y == 0 {
    return x
  } else {
    return add(succ(x),pred(y))
  }
}

func subtract(x:Int,y:Int) -> Int {
  if y == 0 {
    return x
  } else {
    return subtract(pred(x),pred(y))
  }
}

func multiply(x:Int,y:Int) -> Int {
  if y == 0 {
    return y 
  } else if y == 1 {    
    return x
  } else {
    return add(x,(multiply(x,subtract(y,1))))
  }
}

func exp(x:Int,y:Int) -> Int {
  if y == 0 {
    return 1
  } else if y == 1 {
    return x
  } else {
    return multiply(x,exp(x,subtract(y,1)))
  }
}

println(exp(12,2))
println(exp(3,3))
println(exp(4,4))
