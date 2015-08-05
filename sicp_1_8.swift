#!/usr/bin/env swift
// sicp exercise 1.8

func abs(x: Double) -> Double {
  return x > 0 ? x : x < 0 ? -x : 0
}

func cube(x: Double) -> Double {
  return x * x * x
}

func improve(guess: Double, x: Double) -> Double {
  return (((x/(guess * guess)) + (2 * guess)) / 3.0)
}

func goodEnough(guess: Double, x: Double) -> Bool {
  return (abs((cube(guess)-x)) < 0.001)
}

func cbrtIter(guess: Double, x: Double) -> Double {
  return goodEnough(guess,x) ? guess : cbrtIter(improve(guess,x),x)
}

func cbrt(x: Double) -> Double {
  return cbrtIter(1.0,x)
}

println(cbrt(27))
println(cbrt(81))
println(cbrt(cube(9)))
