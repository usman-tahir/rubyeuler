#!/usr/bin/env node

var n = function(x) { return x };
var f = function(x) { return x % 3 === 0 ? "fizz" : n(x) };
var b = function(x) { return x % 5 === 0 ? "buzz" : f(x) };
var fb = function(x) { return x % 15 === 0 ? "fizzbuzz" : b(x) }
for (var i = 1; i <= 100; i++) { console.log(fb(i)) };
