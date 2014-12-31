func invsqr(n:Int) -> Float {
  return 1.0 / (Float(n) * Float(n))
}

func sumSeriesTo(n:Int) -> Float {
  var counter: Float = 0
  for var i = 1; i <= 1000; i++ {
    counter += invsqr(i)
  }
  return counter
}

println(sumSeriesTo(1000))