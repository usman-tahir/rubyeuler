#!/usr/bin/env node
// check whether a year's a leap year

function isLeapYear(y) {
  return y % 400 === 0 ? true : (y % 4 === 0 && y % 100 !== 0) ? true : false
}

console.log(isLeapYear(2000));
console.log(isLeapYear(1900));
console.log(isLeapYear(1800));
console.log(isLeapYear(1996));
console.log(isLeapYear(1999));
