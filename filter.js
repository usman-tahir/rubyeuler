#!/usr/bin/env node
// filter by a function

function handmadeFilter(list,f) {
  var result = [];
  for (var i in list) {
    if (f(list[i])) { result.push(list[i]) };
  }
  return result;
}

var even = function (n) { return (n % 2 === 0) }
var fizzbuzz = function(n) { return (n % 5 == 0 || n % 3 == 0) ? true : false }

var r = [1,2,3,4,5,6,7,8,9,10]
console.log(handmadeFilter(r,even))
console.log(handmadeFilter(r,fizzbuzz))
