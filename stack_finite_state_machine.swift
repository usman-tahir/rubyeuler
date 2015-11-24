#!/usr/bin/env swift
// http://gamedevelopment.tutsplus.com/tutorials/finite-state-machines-theory-and-implementation--gamedev-11867

import Foundation

class StackFSM {

  static let sharedInstance = StackFSM()

  let a = "aardvark"
  let b = "beluga whale"
  let c = "cheetah"
  let d = "dugong"

  private var stack = [String]()

  func popState() {
    if stack.count > 0 {
      stack.removeAtIndex(stack.count-1)
    }
  }

  func pushState(state: String) {
    stack.append(state)
  }

  func getCurrentState() -> String? {
    return stack.count > 0 ? stack.last! : nil
  }

}

let a = StackFSM.sharedInstance
print(a.getCurrentState())
let aa = a.a
a.pushState(aa)
print(a.getCurrentState())
let b = a.b
a.pushState(b)
print(a.getCurrentState())
let c = a.c
a.pushState(c)
print(a.getCurrentState())
let d = a.d
a.pushState(d)
print(a.getCurrentState())
a.popState()
print(a.getCurrentState())
a.popState()
print(a.getCurrentState())
a.popState()
print(a.getCurrentState())
a.popState()
print(a.getCurrentState())
a.popState()
print(a.getCurrentState())
