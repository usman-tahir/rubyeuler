// http://en.wikipedia.org/wiki/Hofstadter_sequence#Hofstadter_H_sequence

func hofH(nth:Int) -> Int {
  if nth == 0 {
    return 0
  } else {
    return nth - hofH(hofH(hofH(nth-1)))
  }
}

for var i = 1; i <= 20; i++ {
  let term = hofH(i)
  println("\(i): \(term)")
}
