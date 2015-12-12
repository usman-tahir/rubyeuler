#!/usr/bin/env swift
// queue

class Queue<T> {
  var elements = [T]()

  func push(n: T) {
    elements.append(n)
  }

  func shift() -> T? {
    return elements.count == 0 ? nil : elements.removeFirst()
  }
}

let a = Queue<Int>()
a.push(1)
print(a.elements)
let c = a.shift()
print(c)
print(a.elements)
a.shift()