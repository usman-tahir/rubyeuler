// https://projecteuler.net/problem=4

func palindromeNumber(n: Int) -> Bool {
  var resultString = ""
  for c in reverse(String(n)) {
    resultString += "\(c)"
  }
  return n == resultString.toInt()!
}

func findLargestPalindrome() -> Int {
  var largestPalindrome = (100 * 100)
  for (var i = 100; i < 1000; i++) {
    for (var j = 100; j < 1000; j++) {
      let n: Int = (i * j)
      if palindromeNumber(n) {
        largestPalindrome = n > largestPalindrome ? n : largestPalindrome
      }
    }
  }
  return largestPalindrome
}

println(findLargestPalindrome())
