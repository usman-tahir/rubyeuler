#!/usr/bin/env node
// fizzy buzz

var fizzybuzz = function(n) {
  if (n % 15 === 0) { return "fizzybuzz" };
  if (n % 5 === 0) { return "buzz" };
  if (n % 3 === 0) { return "fizzy" };
  return n;
}

for (var i = 1; i <= 100; i++) { console.log(fizzybuzz(i)) };
