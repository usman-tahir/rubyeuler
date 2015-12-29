#!/usr/bin/env node
// http://programmingpraxis.com/2015/10/06/the-iron-bar/

function ironBar() {
  var medians = {};
  var list = [];
  for (var i in arguments) { list.push(arguments[i]) };

  var ironBarCounter = list[0];
  for (var i = 1; i < list.length; i++) {
    if (list[i] > ironBarCounter) {
      ironBarCounter++;
    } else if (list[i] < ironBarCounter) {
      ironBarCounter--;
    }
  };
  medians.ironBar = ironBarCounter;

  var offset = list.length % 2 == 1 ? 0 : 1;
  list.sort(function(a,b) { return a - b });
  medians.actual = list[Math.floor(list.length/2)-offset];

  return medians;
}

console.log(ironBar(29, 26, 31, 30, 30, 28, 28, 31, 24, 32))
