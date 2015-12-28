#!/usr/bin/env node
// insertion sort

function insertionSort(list) {
  var newList = list.slice();
  for (var i = 1; i < newList.length; i++) {
    var value = newList[i];
    var j = i - 1;
    while (j >= 0 && newList[j] > value) {
      newList[j+1] = newList[j];
      j--;
    }
    newList[j+1] = value;
  }
  return newList;
}

var t = [100,2,56,200,-52,3,99,33,177,-199];
console.log(insertionSort(t));
