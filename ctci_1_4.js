#!/usr/bin/env node

function replaceSpaces(s) {
  return s.split("").map(function(a) { return a == " " ? "%20" : a }).join("")
}

console.log(replaceSpaces("Hello World"));
