#!/usr/bin/env node
// some lambda calc functions

function identity(x) { return x }
function application(f,s) { return f(s) }
function not(x) { return x ? false : true }
function and(x,y) { return not(not(x)) ? not(not(y)) : not(not(x)) }
function or(x,y) { return not(not(x)) ? not(not(x)) : not(not(y)) }
function select(pair,index) { return pair[index] }
function selectFirst(pair) { return select(pair,0) }
function selectSecond(pair) { return select(pair,1) }
function makePair(x,y) { return [x,y]}

function map(list,fn) {
  var resultingList = [];
  for (var i in list) { resultingList.push(application(fn,list[i])) };
  return resultingList;
}

function filter(list,fn) {
  var resultingList = [];
  for (var i in list) {
    if (application(fn,list[i])) { resultingList.push(list[i]) };
  }
  return resultingList;
}

function reduce(list,sign) {
  var base = sign === "+" ? 0 : sign === "*" ? 1 : null
  if (base === null) { return base }
  function eatList(list,index,sign,base) {
    if (index >= list.length) { 
      return base;
    } else {
      return eatList(list,index+1,sign,eval("list[index]" + sign + "= base"));
    }
  }
  return eatList(list,0,sign,base);
}

function factorial(n) {
  var list = [];
  for (var i = 1; i <= n; i++) { list.push(i) };
  return reduce(list,"*");
}

var t = [1,2,3,4,5,6,7,8,9,10];
var square = function(x) { return x * x };
var squaredT = map(t,square);
console.log(squaredT);
var isOdd = function(x) { return x % 2 !== 0 }
var oddT = filter(t,isOdd);
console.log(oddT);

console.log(reduce(t,"*"))
console.log(factorial(15))
