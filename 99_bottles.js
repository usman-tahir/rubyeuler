#!/usr/bin/env node

function bottles(n) {
  if (n == 0) { return };
  var affix = function(x) { return x == 1 ? "" : "s" };
  console.log(n + " bottle" + affix(n) + " of beer on the wall");
  console.log(n + " bottle" + affix(n) + " of beer");
  console.log("take one down, pass it around");
  console.log(n-1 + " bottle" + affix(n-1) + " of beer on the wall");
  bottles(n-1);
}

bottles(99);
