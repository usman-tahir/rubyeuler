#!/usr/bin/env node
// http://programmingpraxis.com/2015/09/22/three-more-homework-problems/

function removeDuplicates(list) {
  var newList = {};
  for (var i in list) {
    newList[list[i]] = "voici";
  }
  return Object.keys(newList).map(function(a) { return Number(a) });
}

var t1 = [3, 2, 4, 2, 7, 3, 5, 1, 3];
console.log(removeDuplicates(t1));

function commonInts(one,two) {
  var result = [];
  if (one.length > two.length) {
    var firstList = one; var secondList = two;
  } else {
    var firstList = two; var secondList = one;
  }
  for (var i in firstList) {
    if (secondList.indexOf(firstList[i]) !== -1) {
      result.push(firstList[i])
    } 
  }
  return result;
}

var t2 = [2, 3, 5, 5, 6, 7, 8, 9];
var t3 = [1, 2, 4, 5, 5, 7];
console.log(commonInts(t2,t3));

function isPerfectCube(n) {
  return Math.cbrt(n) % 1 === 0;
}

var t4 = 125;
var t5 = 121;
console.log(isPerfectCube(t4));
console.log(isPerfectCube(t5));
