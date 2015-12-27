#!/usr/bin/env node
// vector products

function dotProduct(one, two) {
  var result = 0;
  for (var i = 0; i < one.length; i++) {
    result += (one[i] * two[i]);
  }
  return result;
}

function crossProduct(one, two) {
  var result = [
    (one[1] * two[2]) - (one[2] * two[1]),
    (one[2] * two[0]) - (one[0] * two[2]),
    (one[0] * two[1]) - (one[1] * two[0])
  ];
  return result;
}

var a = [3,4,5];
var b = [4,3,5];
var c = [-5,-12,-13];

console.log(dotProduct(a,b));
console.log(crossProduct(a,b));
console.log(dotProduct(a,crossProduct(b,c)));
console.log(crossProduct(a,crossProduct(b,c)));
