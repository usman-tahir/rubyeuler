#!/usr/bin/env node
// compress string

function compressString(s) {
  function numberOfSameNextCharacters(s, index) {
    if (index >= s.length) { return 0 };
    var newIndex = index+1;
    var counter = 1;
    var c = s.split("");
    while (c[index] === c[newIndex]) {
      newIndex++;
      counter++;
    }
    return counter;
  }

  var result = "";
  for (var i = 0; i < s.length; i++) {
    var c = s[i];
    var n = numberOfSameNextCharacters(s,i);
    if (n >= 1) {
      result += (c + n + "");
      i += (n-1);
    }
  }
  return result;
}

console.log(compressString("aabcccccaaa"))
