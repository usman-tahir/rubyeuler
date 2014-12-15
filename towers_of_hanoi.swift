// http://rosettacode.org/wiki/Towers_of_Hanoi

func move(n:Int,from:Int,to:Int,via:Int) {
  if (n > 0) {
    move(n-1,from,via,to)
    println("Move from \(from) to \(to).")
    move(n-1,via,to,from)
  }
}

move(4,1,2,3)
