#!/usr/bin/env node
// http://programmingpraxis.com/2015/08/21/two-homework-problems/

function inflectionPoint(list) {
  var inflectionIndex = 0;
  var infectionAmount = list.reduce(function(a,b) { return a+b });
  for (var i = 1; i < list.length; i++) {
    if (difference(list,i) < infectionAmount) {
      inflectionIndex = i; infectionAmount = difference(list,i);
    }
  }
  return {inflectionIndex:inflectionIndex,infectionAmount:infectionAmount}
}

function difference(list,i) {
  var firstPart = list.slice(0,i).reduce(function(a,b) { return a+b });
  var secondPart = list.slice(i,list.length).reduce(function(a,b) { return a+b });
  return firstPart > secondPart ? firstPart - secondPart : secondPart - firstPart;
}

var t = [3, 7, 9, 8, 2, 5, 6];
console.log(inflectionPoint(t));
