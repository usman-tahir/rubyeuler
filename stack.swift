#!/usr/bin/env swift
// http://rosettacode.org/wiki/Stack

func stackPush(array:[Int],number:Int) -> [Int] {
  var mutableArray = array
  mutableArray.append(number)
  return mutableArray
}

func stackEmpty(array:[Int]) -> Bool {
  return array.count == 0
}

func stackPop(array:[Int]) -> [Int] {
  var mutableArray = array
  let endIndex = mutableArray.count-1
  var poppedValue: Int
  if !stackEmpty(mutableArray) {
    poppedValue = mutableArray[endIndex]
    mutableArray.removeAtIndex(endIndex)
  }
  return mutableArray
}

func stackTop(array:[Int]) -> Int {
  var endIndex = array.count-1
  return array[endIndex]
}

var stack:[Int] = []
println(stackEmpty(stack))
stack = stackPush(stack,3)
println(stackEmpty(stack))
stack = stackPush(stack,4)
println(stackTop(stack))
println(stackPop(stack))
