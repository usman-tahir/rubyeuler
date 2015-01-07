// http://codegolf.stackexchange.com/questions/2303/how-to-determine-if-a-number-is-odd-or-even-without-mod-or-bitwise-operations

func eo(n:Int) -> String {
  if n == 1 {
    return "odd"
  } else if n == 0 {
    return "even"
  } else {
    return eo(n-2)
  }
}

println(eo(123))
