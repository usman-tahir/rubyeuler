#!/usr/bin/env node
// http://rosettacode.org/wiki/Balanced_brackets

function balanced(s) {
  var balance = 0;
  var char = s.split("")
  for (var i in char) {
    char[i] === "[" ? balance++ : char[i] === "]" ? balance-- : null
    if (balance < 0) { return false } 
  }
  return balance === 0
}

var zero = "[" // false
var one = "[]" // true
var two = "][" // false
var three = "[][]" // true
var four = "][][" // false
var five = "[[][]]" // true
var six = "[]][[]" // false
var list = [zero,one,two,three,four,five,six]

for (var i in list) { console.log(balanced(list[i])) }
