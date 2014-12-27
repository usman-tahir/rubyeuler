// http://projecteuler.net/problem=9

func findTriplet() -> Int {
  for var x = 1; x < 500; x++ {
    for var y = 1; y < 500; y++ {
      for var z = 1; z < 500; z++ {
        if (x*x) + (y*y) == (z*z) && (x + y + z == 1000) {
          return (x * y * z)
        }
      }
    }
  }
  return 0
}

println(findTriplet())
