#!/usr/bin/env node
// http://programmingpraxis.com/2015/03/31/identifying-palindromes/

function arrayIsPalindrome(list) {
  var l = 0; var r = list.length-1;
  while (l !== r && r > l) {
    if (list[l] != list[r]) {
      return false;
    } else {
      l++; r--;
    }
  }
  return true;
}

var evenPalindrome = [1,2,3,4,4,3,2,1];
var oddPalindrome = [1,2,3,4,3,2,1];
var notPalindrome = [1,2,3,4,5,6,7,8];
console.log(arrayIsPalindrome(oddPalindrome));
console.log(arrayIsPalindrome(evenPalindrome));
console.log(arrayIsPalindrome(notPalindrome));
