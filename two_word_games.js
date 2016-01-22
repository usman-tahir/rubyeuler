#!/usr/bin/env node
var fs = require('fs');

function contains(list,element) {
  return list.filter(function(a) { return a == element }).length > 0
}

function fiveAscendingVowels(word) {
  var vowels = ["a","e","i","o","u"];
  var vowelsInWord = [];
  for (var i = 0; i < word.length; i++) {
    if (contains(vowels, word[i].toLowerCase())) {
      vowelsInWord.push(word[i]);
    }
  }
  for (var i = 0; i < vowels.length; i++) {
    if (vowels[i] != vowelsInWord[i]) { return false }
  }
  return true;
}

function sixPlusAscendingAlphaOrder(word) {
  if (word.length < 6) {
    return false;
  } else {
    var c = word.split("").map(function(a) { return a.toLowerCase() });
    var sortedC = word.split("").map(function(a) { return a.toLowerCase() }).sort();
    for (var i in c) {
      if (c[i] != sortedC[i]) {
        return false;
      }
    }
    return true;
  }
}

function returnWordsForTestFn(dict,testfn) {
  var words = fs.readFileSync(dict).toString().split("\n");
  var results = [];
  for (var i in words) {
    if (testfn(words[i])) {
      results.push(words[i]);
    }
  }
  return results;
}

var d = "unixdict.txt"
console.log(returnWordsForTestFn(d,fiveAscendingVowels));
console.log(returnWordsForTestFn(d,sixPlusAscendingAlphaOrder));
