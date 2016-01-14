#!/usr/bin/env node

function gnomeSort(list) {
  var i = 1; var j = 2;
  while (i < list.length) {
    if (list[i-1] < list[i]) {
      i = j;
      j++;
    } else {
      var temp = list[i-1];
      list[i-1] = list[i];
      list[i] = temp;
      i--;
      if (i === 0) {
        i = j;
        j++;
      }
    }
  }
  return list;
}

var t = [100, 2, 56, 200, -52, 3, 99, 33, 177, -199];
console.log(gnomeSort(t));
