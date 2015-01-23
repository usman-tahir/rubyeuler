// http://rosettacode.org/wiki/Repeat_a_string

func repeat(n:String,number:Int) -> String {
  var result: String = n
  for var i = 1; i < number; i++ {
    result += n
  }
  return result
}

println(repeat("ha",5))
