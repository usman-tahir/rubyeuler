#!/usr/bin/env node
// http://rosettacode.org/wiki/String_prepend

function prependString(str, prefix) {
  return prefix.concat(str)
}

console.log(prependString("my string", "changed "))
