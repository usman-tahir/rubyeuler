#!/usr/bin/env node

function compareWithOneError(s1, s2) {
  if (s1 === s2) { return -1 };
  var errorCount = 0; var diffIndex = 0;
  var oneChar = s1.split(""); var twoChar = s2.split("");
  if (oneChar.length === twoChar.length) {
    for (var i = 0; i < oneChar.length; i++) {
      if (oneChar[i] != twoChar[i]) { diffIndex = i; errorCount += 1; };
      if (errorCount > 1) { return -1 };
    }
    return diffIndex;
  } else if (oneChar.length+1 === twoChar.length) {
    for (var i = 0; i < twoChar.length; i++) {
      if (oneChar[i] != twoChar[i]) { diffIndex = i; errorCount += 1; twoChar.splice(i,1); };
      if (errorCount > 1) { return -1 };
    }
    return diffIndex;
  } else if (oneChar.length === twoChar.length+1) {
    for (var i = 0; i < oneChar.length; i++) {
      if (oneChar[i] != twoChar[i]) { diffIndex = i; errorCount += 1; oneChar.splice(i,1); };
      if (errorCount > 1) { return -1 };
    }
    return diffIndex;
  } else { return -1 };
}

console.log(compareWithOneError("one","one"))
console.log(compareWithOneError("one","ome"))
console.log(compareWithOneError("one","bone"))
console.log(compareWithOneError("one","bome"))
console.log(compareWithOneError("bone","one"))
console.log(compareWithOneError("bone","ome"))