#!/usr/bin/env node
// find number of unique characters in a string

function uniqueChar(s) {
  var uniques = {};
  var c = s.split("");
  for (var i = 0; i < c.length; i++) {
    uniques[c[i]] = "voici";
  }
  return Object.keys(uniques).length;
}

console.log(uniqueChar("abracadabra"));
