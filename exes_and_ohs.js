#!/usr/bin/env node
// http://www.codewars.com/kata/55908aad6620c066bc00002a


function XO(str) {
  var c = str.split("");
  var oh = c.filter(function(e) { return e.toLowerCase() === "o" }).length;
  var ex = c.filter(function(e) { return e.toLowerCase() === "x" }).length;
  return oh === ex;
}

var one = 'xo';
var two = 'xxOo';
var three = 'xxxm';
var four = 'Oo';
var five = 'oomx';
console.log(XO(one));
console.log(XO(two));
console.log(XO(three));
console.log(XO(four));
console.log(XO(five));

