#!/usr/bin/env node
// find digital root

function sumDigits(n,c) {
  if (c === undefined) {
    c = 0
  }
  if (n < 10) {
    return Math.floor(n + c)
  } else {
    return sumDigits(Math.floor(n/10),Math.floor(c+(n%10)))
  }
}

function findRoot(n,persistence) {
  if (persistence === undefined) {
    persistence = 1
  }
  if (n < 10) {
    return [n, persistence]
  } else {
    return findRoot(sumDigits(n),persistence+1)
  }
}

var t = [627615, 39390, 588225, 393900588225]
for (var i in t) { console.log(findRoot(t[i])) }
