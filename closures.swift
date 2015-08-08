#!/usr/bin/env swift
// http://rosettacode.org/wiki/Closures/Value_capture

let closure = { (x: Int) -> Int in return x * x}
println((0...9).map { closure($0) })
