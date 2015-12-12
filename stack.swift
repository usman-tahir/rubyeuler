#!/usr/bin/env swift
// stack

class Stack<T> {
  
  var elements = [T]()

  func push(n: T) {
    elements.append(n)
  }

  func pop() -> T? {
    return elements.count == 0 ? nil : elements.removeLast()
  }

}

let a = Stack<Int>()
a.push(1)
print(a.elements)
let c = a.pop()
print(c)
print(a.elements)
