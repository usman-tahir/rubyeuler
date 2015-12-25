#!/usr/bin/env node
// find element equal to index

function elementIsIndex(list) {
  for (var i in list) {
    if (list[i] == i) { return i };
  }
  return -1
}

var e = [-3,0,1,3,5,7]
console.log(elementIsIndex(e))
