#!/usr/bin/env node
// abundant, perfect, deficient numbers in js

function divisors(n) {
  var div = []
  for (var i = 0; i <= Math.floor(Math.sqrt(n)); i++) {
    if (n % i === 0) {
      div.push(i);
      if (n/i !== i) {
        div.push(n/i);
      }
    }
  }
  div.sort(function(x,y) { return x - y });
  return div;
}

function sumList(list,i,c) {
  if (i === undefined) {
    var i = 0;
  }
  if (c === undefined) {
    var c = 0;
  }
  if (i >= list.length) {
    return c;
  } else {
    return(sumList(list,i+1,c+list[i]));
  }
}

function sumDivisors(n) {
  var div = divisors(n);
  div.pop();
  return sumList(div);
}

function abundant(n) {
  return sumDivisors(n) > n;
}

function deficient(n) {
  return sumDivisors(n) < n;
}

function perfect(n) {
  return sumDivisors(n) === n;
}

for (var i = 1; i < 1000; i++) { 
  var kind = abundant(i) ? "abundant" : deficient(i) ? "deficient" : "perfect";
  console.log(i + ": " + kind);
}
