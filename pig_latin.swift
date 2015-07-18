// http://programmingpraxis.com/2009/06/02/pig-latin/

func initialVowel(w: String) -> String {
  return w + "-way"
}

func initialConsonant(w: String, vowels: [String]) -> String {
  var suffix = ""
  var index = 0
  while !contains(vowels,w[index]) {
    suffix += w[index]
    index++
  }
  var newString = ""
  while index < count(w) {
    newString += w[index]
    index++
  }
  return "\(newString)-\(suffix)ay" 
}

func pigLatinize(w: String) -> String {
  let vowels = ["a","e","i","o","u"]
  return contains(vowels,w[0]) ? initialVowel(w) : initialConsonant(w,vowels)
}

extension String {
  subscript (i: Int) -> String {
    return String(Array(self)[i])
  }
}

println(pigLatinize("abracadabra"))
println(pigLatinize("boomshakalaka"))
println(pigLatinize("stream"))
