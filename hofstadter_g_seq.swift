// http://mathworld.wolfram.com/HofstadterG-Sequence.html

func hofG(nth:Int) -> Int {
  if nth == 0 {
    return 0
  } else {
    return (nth - hofG(hofG(nth - 1)))
  }
}

for var i = 1; i <= 15; i++ {
  let term = hofG(i)
  println("\(i): \(term)")
}
