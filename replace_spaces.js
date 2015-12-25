#!/usr/bin/env node
// replace spaces with "%20"

function replaceSpaces(s) {
  var result = ""
  var c = s.split("")
  for (var i = 0; i < c.length; i++) {
    result += c[i] === " " ? "%20" : c[i]
  }
  return result
}

console.log(replaceSpaces("Hello world"))
