// http://rosettacode.org/wiki/Leap_year

func leapYear(year: Int) -> Bool {
  if (year % 400 == 0) {
    return true
  } else if (year % 4 == 0 && year % 100 != 0) {
    return true
  } else {
    return false
  }
}

println("2000: \(leapYear(2000))")
println("1900: \(leapYear(1900))")
println("1800: \(leapYear(1800))")
println("1996: \(leapYear(1996))")
println("1999: \(leapYear(1999))")

