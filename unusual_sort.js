#!/usr/bin/env node
// http://www.codewars.com/kata/un-usual-sort

function unusualSort(list) {
  var uppercase = []; var lowercase = []; var ints = [];
  for (var i in list) {
    if (Number(list[i])) {
      ints.push(list[i]);
    } else {
      if (list[i].toUpperCase() === list[i]) {
        uppercase.push(list[i]);
      } else {
        lowercase.push(list[i]);
      }
    }
  }
  return uppercase.sort().concat(lowercase.sort()).concat(ints.sort())
}

var t = ["a","Z","B", 1, 5, "5", "1"];
console.log(unusualSort(t));
