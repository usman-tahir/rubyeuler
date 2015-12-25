#!/usr/bin/env node
// detect a palindrome

function reverseString(s) {
  var result = "";
  var c = s.split("");
  for (var i = c.length-1; i >= 0; i--) {
    result += c[i];
  }
  return result;
}

function isPalindrome(s) {
  return (s === reverseString(s))
}

console.log(isPalindrome("aba"))
console.log(isPalindrome("abc"))
