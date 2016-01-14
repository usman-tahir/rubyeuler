#!/usr/bin/env node
// http://rosettacode.org/wiki/Equilibrium_index

function equilibriumIndex(list) {
  var eqIndices = [];
  for (var i = 1; i < list.length; i++) {
    var firstPart = list.slice(0,i+1).reduce(function(a,b) { return a+b });
    var secondPart = list.slice(i,list.length).reduce(function(a,b) { return a+b });
    if (firstPart === secondPart) { eqIndices.push(i) };
  }
  return eqIndices;
}

var t = [-7,1,5,2,-4,3,0];
console.log(equilibriumIndex(t));
