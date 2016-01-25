#!/usr/bin/env swift

var n: (Int) -> (String) = { x in return "\(x)"}
var f: (Int) -> (String) = { x in return x % 3 == 0 ? "fizz" : n(x) }
var b: (Int) -> (String) = { x in return x % 5 == 0 ? "buzz" : f(x) }
var fb: (Int) -> (String) = { x in return x % 15 == 0 ? "fizzbuzz" : b(x) }
for i in 1...100 { print(fb(i)) }
