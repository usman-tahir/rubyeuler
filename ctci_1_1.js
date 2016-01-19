#!/usr/bin/env node

function arrayContains(list,e) {
  return list.filter(function(a) { return a === e }).length != 0
}

function unique(s) {
  var charsArray = s.split("");
  var charsSet = [];
  for (var i in charsArray) {
    if (!arrayContains(charsSet,charsArray[i])) {
      charsSet.push(charsArray[i]);
    }
  }
  return charsArray.length === charsSet.length
}

console.log(unique("abc"));
console.log(unique("abba"));
console.log(unique("hello world"));
console.log(unique("abcdefghijkl"));
