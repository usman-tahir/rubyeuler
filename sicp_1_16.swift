// sicp 1.16: fast recursive exponentiation

func square(x:Int) -> Int {
  return (x * x)
}

func even(x:Int) -> Bool {
  return x % 2 == 0
}

func fastExpt(b:Int,n:Int) -> Int {
  return fastExptIter(b,n,1)
}

func fastExptIter(b:Int,counter:Int,product:Int) -> Int {
  if (counter == 0) {
    return product
  } else if (even(counter)) {
    return fastExptIter(square(b),(counter/2),product)
  } else {
    return fastExptIter(b,(counter-1),(b*product))
  }
}

println(fastExpt(3,2))
println(fastExpt(3,3))
