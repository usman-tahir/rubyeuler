#!/usr/bin/env node
// http://programmingpraxis.com/2015/10/02/the-hot-hand/

function fourFlips() {
  var flips = [flip(), flip(), flip(), flip()];
  var heads = 0; var result = 0;
  for (var i = 1; i < flips.length; i++) {
    if (flips[i-1] === heads && flips[i] === heads) {
      result += 1;
    }
  }
  return result;
}

function flip() {
  return Math.round(Math.random());
}

function oneMillionFlips() {
  var result = 0;
  for (var i = 1; i < 1000000; i++) {
    result += fourFlips();
  }
  return result;
}

console.log(oneMillionFlips());
