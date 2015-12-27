#!/usr/bin/env node
// http://programmingpraxis.com/2013/05/07/three-list-exercises/

function removeAtInterval(list,interval) {
  var newList = [];
  for (var i = 0; i < list.length; i++) {
    if ((i+1) % interval !== 0) {
      newList.push(list[i]);
    }
  }
  return newList
}

var t1 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
console.log(removeAtInterval(t1,4));

function removeDuplicates(list) {
  var newList = {};
  for (var i in list) {
    newList[list[i]] = "voici";
  }
  return Object.keys(newList).map(function(a) { return Number(a) });
}

var t2 = [1, 2, 2, 3, 3, 3, 4, 4, 4, 4, 5, 5, 5, 5, 5]
console.log(removeDuplicates(t2));

function halveList(list) {
  var pivot = Math.floor(list.length/2);
  var result = [[],[]];
  for (var i = 0; i < pivot; i++) {
    result[0].push(list[i]);
  };
  for (var i = pivot; i < list.length; i++) {
    result[1].push(list[i]);
  }
  return result;
}

var t3 = [1,2,3,4,5];
console.log(halveList(t3));
