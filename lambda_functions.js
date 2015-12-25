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
