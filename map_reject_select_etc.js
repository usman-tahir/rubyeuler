#!/usr/bin/env node

function _map(list,f) {
  var results = [];
  for (var i in list) {
    results.push(f(list[i]))
  }
  return results
}

function _reject(list,f) {
  var results = [];
  for (var i in list) {
    if (!f(list[i])) { results.push(list[i]) }
  }
  return results
}

function _select(list,f) {
  var results = [];
  for (var i in list) {
    if (f(list[i])) { results.push(list[i]) }
  }
  return results
}

var r = [1,2,3,4,5,6,7,8,9,10]
var dbl = function (n) { return n * 2 }
console.log(_map(r,dbl))

var divByFour = function (n) { return n % 4 === 0 }
console.log(_reject(r,divByFour))

var isAString = function (n) { return typeof n === String }
console.log(_select(r,isAString))

var makeIntoString = function (n) { return n + "" }
console.log(_map(r,makeIntoString))
