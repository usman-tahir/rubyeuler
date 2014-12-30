// http://rosettacode.org/wiki/Palindrome_detection

func isPalindrome(string:String) -> Bool {
  let chars = Array(string)
  let palind = chars.reverse()
  return chars == palind
}

println(isPalindrome("aca"))
println(isPalindrome("abc"))