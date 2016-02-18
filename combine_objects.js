#!/usr/bin/env node
// http://www.codewars.com/kata/combine-objects

var objA = {
  a: 10,
  b: 20,
  c: 30
}

var objB = {
  a: 3,
  c: 6,
  d: 3
}

function combine(obj1,obj2) {
  var newObj = {}
  for (var key in obj1) {
    if (obj2.hasOwnProperty(key)) {
      newObj[key] = obj1[key] + obj2[key]
    } else {
      newObj[key] = obj1[key]
    }
  }
  for (var key in obj2) {
    if (!newObj.hasOwnProperty(key)) {
      newObj[key] = obj2[key]
    }
  }
  return newObj
}

console.log(combine(objA,objB))
