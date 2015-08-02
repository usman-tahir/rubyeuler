#!/usr/bin/env swift
// http://rosettacode.org/wiki/Generic_swap

func genericSwap<T>(inout x: T, inout y: T) {
  (x, y) = (y, x)
}

var (a, b) = (1, 2)
println("a is \(a); b is \(b)")
genericSwap(&a,&b)
println("a is \(a); b is \(b)")
