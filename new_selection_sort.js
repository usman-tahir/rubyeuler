#!/usr/bin/env node
// selection sort

function selectionSort(list) {
  var newList = list.slice();
  for (var i = 0; i <= newList.length; i++) {
    for (var j = 0; j <= newList.length; j++) {
      if (newList[i] < newList[j]) {
        var temp = newList[i];
        newList[i] = newList[j];
        newList[j] = temp;
      }
    }
  }
  return newList;
}

var t = [10,8,100,1,637,234,233,235,98,1000,2,5,6];
console.log(selectionSort(t));
