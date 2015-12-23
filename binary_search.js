#!/usr/bin/env node
// binary search

function binarySearch(list, low, high, valueToFind) {
  if (high < low) { return -1 }
  var mid = Math.floor((low + high)/2);
  if (list[mid] > valueToFind) {
    return binarySearch(list, low, mid-1, valueToFind);
  } else if (list[mid] < valueToFind) {
    return binarySearch(list, mid+1, high, valueToFind);
  } else {
    return mid;
  }
}

function binarySearchWrapper(list, value) {
  return binarySearch(list, 0, list.length, value)
}

var t = [0,1,4,5,6,7,8,9,12,26,45,67,78,90,98,123,211,234,456,769,865,2345,3215,14345,24324]
console.log(binarySearchWrapper(t,11))
console.log(binarySearchWrapper(t,211))
