#!/usr/bin/env node
// hailstone sequence

function hailstoneSequence(n) {
  if (n === 1) {
    return 1;
  } else if (n % 2 === 0) {
    var newN = n/2;
    console.log(newN);
    return hailstoneSequence(newN);
  } else if (n % 2 !== 0) {
    var newN = (3 * n) + 1;
    console.log(newN);
    return hailstoneSequence(newN);
  }
}

hailstoneSequence(27);
