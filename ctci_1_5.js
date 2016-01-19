#!/usr/bin/env node

function consecutiveChar(s,i,n) {
  if (n === undefined) {
    n = 1;
  }
  var j = i+1;
  if (j >= s.length) {
    return n;
  }
  while (j < s.length && s[j] === s[i]) {
    n++;
    j++;
  }
  return n;
}

function compressString(a) {
  var result = "";
  for (var i = 0; i < a.length; i++) {
    var c = a[i];
    var repeated = consecutiveChar(a,i);
    result += c;
    result += repeated;
    i += repeated-1;
  } 
  return result;
}

var s = "aabcccccaaa";
console.log(compressString(s));