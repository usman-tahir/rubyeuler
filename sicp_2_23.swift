#!/usr/bin/env swift
// sicp exercise 2.23

func forEach(proc: (Int) -> (), n: [Int], i: Int = 0) -> [Int] {
  if i == n.count {
    return []
  } else {
    proc(n[i])
    return forEach(proc, n, i: i+1)
  }
}

func display(x: Int) {
  println(x)
}

let list = [57, 321, 88]
forEach(display,list)
