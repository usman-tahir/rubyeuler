// http://rosettacode.org/wiki/Greatest_common_divisor

func gcd(a: Int, b:Int) -> Int {
  return b == 0 ? a : gcd(b,a%b)
}

println(gcd(36,33))
println(gcd(36,16))
println(gcd(8,24))
