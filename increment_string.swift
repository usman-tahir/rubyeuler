// http://rosettacode.org/wiki/Increment_a_numerical_string

func incrementNumericalString(chars:String) -> String {
  let num = chars.toInt()
  return String(num! + 1)
}

var chars = "23"
for var i = 1; i <= 10; i++ {
  chars = incrementNumericalString(chars)
  println(chars)
}
