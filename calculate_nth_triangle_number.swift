#!/usr/bin/env swift
// http://programmingpraxis.com/2016/01/01/happy-new-year-2/

func nthTriangularNumber(n: Int) -> Int {
  return (n * (n + 1))/2
}

print(nthTriangularNumber(63))
