#!/usr/bin/env node
// find first nonrepeated char in a string

function countRepeatedElements(list,e) {
  var counter = 0;
  for (var i in list) {
    if (list[i] === e) { counter++ }
  }
  return counter;
}

function findFirstNonrepeatedChar(s) {
  if (s.length === 0) { return null };
  var c = s.split("");
  for (var i = 0; i < c.length; i++) {
    var character = c[i];
    if (countRepeatedElements(c,character) === 1) { return character };
  }
  return null;
}

console.log(findFirstNonrepeatedChar("total"));
console.log(findFirstNonrepeatedChar("teeter"));
