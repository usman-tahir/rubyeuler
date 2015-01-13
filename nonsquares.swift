// http://rosettacode.org/wiki/Sequence_of_non-squares
import Darwin

func nonSquares(n:Int) -> Float {
  return Float(n) + floor(Float(1 / 2 + sqrt(Float(n))))
}

for var i = 1; i <= 22; i++ {
  let nonSquare = Int(nonSquares(i))
  println("\(i): \(nonSquare)")
}

for var j = 23; j <= 1_000_000; j++ {
  let nonSquare = nonSquares(j)
  if sqrt(nonSquare) % 1 == 0 {
    println("\(j) is a square.")
  }
}

println("I didn't find any squares for n <= 1_000_000.")
