// http://mitpress.mit.edu/sicp/full-text/book/book-Z-H-10.html
// newton's method for finding square roots

func square(x:Float) -> Float {
  return x * x
}

func sqrt(x:Float) -> Float {
  return sqrtIter(1.0,x)
}

func sqrtIter(guess:Float,x:Float) -> Float {
  if goodEnough(guess,x) {
    return guess
  } else {
    return sqrtIter(improveGuess(guess,x),x)
  }
}

func improveGuess(guess:Float,x:Float) -> Float {
  return average(guess,x/guess)
}

func average(x:Float,y:Float) -> Float {
  return (x+y)/2
}

func goodEnough(guess:Float,x:Float) -> Bool {
  return abs(square(guess) - x) < 0.001
}

println(sqrt(9))
println(sqrt(100+37))
println(sqrt(sqrt(2)) + (sqrt(3)))
println(square(sqrt(1000)))
