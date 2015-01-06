// http://rosettacode.org/wiki/Binary_digits

func decimalToBinary(n:Int) -> Int {
  if n == 0 {
    return 0
  } else {
    return n % 2 + 10 * decimalToBinary(n/2)
  }
}

println(decimalToBinary(115))