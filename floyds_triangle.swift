// http://rosettacode.org/wiki/Floyd%27s_triangle

// the first row is just 1
// successive rows start towards the left with the next number followed by successive 
// naturals listing one more number than the line above. 

func floyds(rows:Int) {
  var n = 1
  for var row = 1; row <= rows; row++ {
    for var counter = 1; counter <= row; counter++ {
      print(n >= 100 ? "\(n) " : n >= 10 ? " \(n) " : "  \(n) ")
      n++
    }
    println()
  }
  println()
}

floyds(5)
floyds(14)
