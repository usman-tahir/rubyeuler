// http://rosettacode.org/wiki/Variadic_function

func cardinalToOrdinal(n: Int...) -> [String] {
  let suff = ["1":"st", "2":"nd", "3":"rd"]
  let strings = n.map { String($0) }
  var ordinalStrings = [String]()
  for string in strings {
    var suffix = ""
    if string.toInt() >= 10 && string[count(string)-2] == "1" {
      suffix = "th"
    } else if !contains(suff.keys,string[count(string)-1]) {
      suffix = "th"
    } else {
      suffix = suff[string[count(string)-1]]!
    }
    let newString = string + suffix
    ordinalStrings.append(newString)
  }
  return ordinalStrings
}

extension String {

  subscript (i: Int) -> String {
    return String(Array(self)[i])
  }

}

var a = cardinalToOrdinal(1,2,3,45,101,1076,2014)
println(a)
