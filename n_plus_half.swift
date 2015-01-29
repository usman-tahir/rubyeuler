// http://rosettacode.org/wiki/Loops/N_plus_one_half

func loop() -> () {
  for var i = 1; ; i++ {
    print(i)
    if (i >= 10) {
      break
    }
    print(", ")
  }
  println()
}

loop()
