// http://mitpress.mit.edu/sicp/full-text/book/book-Z-H-11.html#%_sec_1.2

func fastMultiplication(x:Int,y:Int) -> Int {
  return multiIter(x,y,0)
}

func multiIter(x:Int,y:Int,counter:Int) -> Int {
  if (y == 0) {
    return counter
  } else if (y % 2 == 0) {
    return multiIter((x+x),(y/2),(counter))
  } else {
    return multiIter(x,(y-1),(counter+x))
  }
}

println(fastMultiplication(5,5))
println(fastMultiplication(7,9))
