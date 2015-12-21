#!/usr/bin/env node
// sicp exercise 1.3 in node

function square(x) { return x * x }
function sum(x,y) { return x + y }
function sumSquares(x,y) { return sum(square(x),square(y)) }
function maximum(x,y) { return x > y ? x : y }
function sumTwoLargerSquares(a,b,c) { return sumSquares(maximum(a,b),maximum(b,c)) }
console.log(sumTwoLargerSquares(1,2,3))
console.log(sumTwoLargerSquares(2,1,1))
