#!/usr/bin/env node

function dotProduct(listOne, listTwo) {
  var resultList = []
  for (var i in listOne) { resultList.push(listOne[i] * listTwo[i]) }
  var result = 0
  for (var i in resultList) { result += resultList[i] }
  return result
}

var testArrayOne = [1,3,-5]
var testArrayTwo = [4,-2,-1]
console.log(dotProduct(testArrayOne,testArrayTwo))
