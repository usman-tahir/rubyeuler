#!/usr/bin/env node
// sicp exercise 1.8

function abs(x) {
  return x > 0 ? x : x < 0 ? -x : 0
}

function cube(x) { return x * x * x }

function goodEnough(guess,x) {
  return (abs((cube(guess)-x)) < 1e-100)
}

function improve(guess,x) {
  return (((x/(guess * guess)) + (2 * guess)) / 3.0)
}

function cubeRootIter(guess,x) {
  return goodEnough(guess,x) ? guess : cubeRootIter(improve(guess,x),x)
}

function cubeRoot(x) { return cubeRootIter(1.0,x) }

console.log(cubeRoot(27))
console.log(cubeRoot(64))