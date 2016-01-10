#!/usr/bin/env node
// http://programmingpraxis.com/2014/11/21/an-array-of-zeroes/

function moveZeroes(list) {
  var l = 0; var r = list.length-1
  while (l !== r) {
    if (list[l] === 0 && list[r] !== 0) {
      var t = list[l];
      list[l] = list[r];
      list[r] = t;
      l++; r--;
    } else if (list[l] === 0 && list[r] === 0) {
      r--;
    } else if (list[l] !== 0 && list[r] !== 0) {
      l++;
    } else if (list[l] !== 0 && list[r] === 0) {
      l++; r--;
    }
  }
  return list;
}

var t = [1,0,2,0,0,3,4];
var r = [1,4,2,3,0,0,0];

console.log(moveZeroes(t));
