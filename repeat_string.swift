// http://rosettacode.org/wiki/Repeat_a_string

func repeat(n:String,number:Int) -> String {
  var result: String = ""
  for var i = 0; i < number; i++ {
    result += n
  }
  return result
}

println(repeat("ha",5))
