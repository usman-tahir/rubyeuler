// http://en.wikipedia.org/wiki/Tak_%28function%29

func tak(x:Int,y:Int,z:Int) -> Int {
  if y < x {
    return tak(tak(x-1,y,z),tak(y-1,z,x),tak(z-1,x,y))
  } else {
    return z
  }
}

println(tak(1,2,3))
