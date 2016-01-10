#!/usr/bin/env node
// http://www.codewars.com/kata/x-marks-the-spot

function x(n) {
  var matrix = [];
  for (var i = 0; i < n; i++) {
    var line = [];
    for (var j = 0; j < n; j++) {
      (i === j || j + i === n - 1) ? line.push(1) : line.push(0);
    }
    matrix.push(line);
  }
  return matrix;
}

var five = x(5);
var six = x(6);
for (var i in five) { console.log(five[i]); };
console.log('/ / /');
for (var i in six) { console.log(six[i]); };
