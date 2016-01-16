#!/usr/bin/env node
// http://programmingpraxis.com/2009/10/30/two-sub-quadratic-sorts/

function combSort(list) {
  var gap = list.length;
  var shrink = 1.3;
  var swapped = true;
  while (gap !== 1 && swapped === true) {
    gap = (gap / shrink) | 0;
    if (gap < 1) { gap = 1 };
    var i = 0;
    swapped = false;
    while (i+gap < list.length) {
      if (list[i] > list[i+gap]) {
        var t = list[i];
        list[i] = list[i+gap];
        list[i+gap] = t;
        swapped = true;
      }
      i++;
    }
  }
  return list;
}

function shellSort(list) {
  var gap = list.length/2 | 0;
  while (gap > 0) {
    for (var i = gap; i < list.length; i++) {
      var t = list[i];
      var j = i;
      while (j >= gap && list[j-gap] > t) {
        list[j] = list[j-gap]
        j = j - gap;
      }
      list[j] = t
    }
    gap = gap / 2 | 0;
  }
  return list
}

var t = [10,99,4,1001,1,5,7,2,100,0];
console.log(combSort(t));
console.log(shellSort(t));
