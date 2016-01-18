#!/usr/bin/env node
// http://www.codewars.com/kata/always-perfect

function alwaysPerfect(n) {
  var digits = n.split(',').map(function(a) { return Number(a) })
  if (digits.filter(function(a) { return String(a) }).join(',') !== n) {
    return "incorrect input";
  } else {
    for (var i = 1; i < digits.length; i++) {
      if (digits[i] - 1 !== digits[i-1]) { return "nonconsective numbers" };
    }
    if (digits.length != 4) { return "requires a list of 4 numbers" };
  }
  return Math.sqrt(digits.reduce(function(a,b) { return a * b }) + 1);
}

var s = "1,2,3,4"
console.log(alwaysPerfect(s))
