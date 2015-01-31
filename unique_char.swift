// find unique characters in a string

func uniqueChar(string:String) -> Int {
  let stringChars = Array(string)
  var uniqChars:[String] = []
  for var i = 0; i < stringChars.count; i++ {
    if !contains(uniqChars,String(stringChars[i])) {
      uniqChars.append(String(stringChars[i]))
    }
  }
  return uniqChars.count
}

println(uniqueChar("abracadabra"))
