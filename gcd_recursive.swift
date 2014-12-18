// http://rosettacode.org/wiki/Greatest_common_divisor

func greatestCommonDiv(a:Int,b:Int) -> Int {
  if b == 0 {
    return a
  } else {
    return greatestCommonDiv(b,(a%b))
  }
}

println("33 & 36")
println(greatestCommonDiv(33,36))
println("36 & 16")
println(greatestCommonDiv(36,16))
println("8 & 24")
println(greatestCommonDiv(8,24))
