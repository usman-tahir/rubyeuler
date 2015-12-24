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

function _reduce(list,f,baseValue) {
  var result = baseValue
  if (list.length === 0) { return null }
  if (list.length === 1) { return list[0] }
  function eatList(list,f,v,i) {
    if (i === undefined) { i = 0 }
    if (i === list.length) { return v }
    return eatList(list,f,f(v,list[i]),i+1)
  }
  return eatList(list,f,result)
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

var _add = function (a,b) { return a + b }
var _multiply = function(a,b) { return a * b }
var l = [2,3,4]
console.log(_reduce(l,_add,0))
console.log(_reduce(l,_multiply,1))
