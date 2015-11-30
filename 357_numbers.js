#!/usr/bin/env node
// http://programmingpraxis.com/2015/03/06/357-numbers/

function threeFiveSevenNumber(n) {
  var t = n;
  while (t % 3 === 0) { t /= 3 };
  while (t % 5 === 0) { t /= 5 };
  while (t % 7 === 0) { t /= 7 };
  return t === 1 ? 1 : 0;
}

function find357NumbersBelow(limit) {
  var counter = 0
  for (var i = 1; i < limit; i += 2) { counter += threeFiveSevenNumber(i) }
  return counter
}

console.log(find357NumbersBelow(1000000))
