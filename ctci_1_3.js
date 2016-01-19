#!/usr/bin/env node

function isPermutation(one,two) {
  var oneChars = one.split("").sort().map(function(c) { return c.toLowerCase() });
  var twoChars = two.split("").sort().map(function(c) { return c.toLowerCase() });
  if (oneChars.length !== twoChars.length) { return false };
  for (var i in oneChars) {
    if (oneChars[i] !== twoChars[i]) { return false };
  }
  return true;
}

console.log(isPermutation("Hello","World"));
console.log(isPermutation("asdf","fsda"));
