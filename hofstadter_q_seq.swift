// http://rosettacode.org/wiki/Hofstadter_Q_sequence

func hofQ(nth:Int) -> Int {
  if nth == 1 || nth == 2 {
    return 1
  } else {
    return hofQ(nth - hofQ(nth - 1)) + hofQ(nth - hofQ(nth - 2))
  }
}

for var i = 1; i <= 10; i++ {
  let term = hofQ(i)
  println("\(i): \(term)")
}

println(hofQ(1000))
