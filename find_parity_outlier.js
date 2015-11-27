#!/usr/bin/env node
// http://www.codewars.com/kata/find-the-parity-outlier

function findParityOutlier(list) {
  var firstThree = [list[0] % 2, list[1] % 2, list[2] % 2].reduce(function(a,b) { return a + b; }, 0);
  var parity = firstThree < 2 ? "(e % 2 !== 0)" : "(e % 2 === 0)"
  return list.filter(function (e) { return eval(parity) })[0];
}

var one = [2,4,0,100,4,11,2602,36];
var two = [160,3,17919,19,11,13,-21];
console.log(findParityOutlier(one));
console.log(findParityOutlier(two));
