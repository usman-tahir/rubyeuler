#!/usr/bin/env node
// variadic function

function doubleArguments() {
  var results = [];
  for (var i in arguments) {
    results.push(arguments[i] + arguments[i]);
  }
  return results;
}

console.log(doubleArguments(1,2,3,"e"));
