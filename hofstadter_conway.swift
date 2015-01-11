// http://en.wikipedia.org/wiki/Hofstadter_sequence#Hofstadter.E2.80.93Conway_.2410.2C000_sequence
// http://oeis.org/A004001


func hofConway(nth:Int) -> Int {
  if nth == 1 || nth == 2 {
    return 1
  } else {
    return hofConway(hofConway(nth - 1)) + hofConway(nth - hofConway(nth - 1))
  }
}

for var i = 1; i <= 20; i++ {
  let result = hofConway(i)
  println("\(i): \(result)")
}