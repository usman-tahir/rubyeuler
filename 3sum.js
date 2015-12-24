#!/usr/bin/env node
// find three 3 elements which sum to 0

function findZeroSumTerms(list) {
  var solutions = {}
  for (var i in list) {
    for (var j = i; j < list.length; j++) {
      var testValue = -(list[i] + list[j]);
      for (var k in list) {
        if (list[k] === testValue) {
          var values = [list[i],list[j],list[k]].sort(function(a,b) { return a - b});
          var key = values[0] + "," + values[1] + "," + values[2] + ""
          solutions[key] = values
        }
      }
    }
  }  
  var keys = Object.keys(solutions);
  var results = [];
  for (var k in keys) { results.push(solutions[keys[k]]) };
  return results
}

var t = [8,-25,4,10,-10,-7,2,-3];
console.log(findZeroSumTerms(t));
