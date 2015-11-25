#!/usr/bin/env node
// https://projecteuler.net/problem=21

function factors(n) {
  var factorsOfN = []
  for (var i = 1; i < n; i++) {
    if (n % i == 0) { factorsOfN.push(i) }
  }
  return factorsOfN
}

function findAmicablePairs(limit) {
  var pairs = {}
  var amicables = {}
  for (var i = 2; i < limit; i++) {
    var f = factors(i)
    amicables[i] = f.reduce( (a,b) => a+b )
  }
  for (k in amicables) {
    var v = amicables[k]
    if (amicables[v] == k && v != k) {
      var t = [k,v].sort()
      pairs[t[0]] = t[1]
    }
  }
  return pairs
}

function sumAmicableNumbersBelow(n) {
  var pairs = findAmicablePairs(n)
  var accumulator = 0
  for (k in pairs) {
    accumulator += Number(k)
    accumulator += Number(pairs[k])
  }
  return accumulator
}

console.log(sumAmicableNumbersBelow(10000))
