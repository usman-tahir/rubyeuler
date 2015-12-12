#!/usr/bin/env swift

class Link<T> {

  var data: T
  var next: Link?

  init(data: T, next: Link? = nil) {
    self.data = data
    self.next = next
  }

  func append(inout l: Link) {
    l.next = self.next
    self.next = l
  }

  func deleteNext() {
    guard self.next != nil else { return }
    let temp = self.next!.next
    self.next = nil
    self.next = temp
  }

}

var a = Link(data: "link one")
print(a.data)
print(a.next)
var b = Link(data: "link two")
print(b.data)
print(b.next)
a.append(&b)
print(a.next)
print(b.next)
a.deleteNext()
print(b)
print(a.next)

func traverseIntList(currentNode: Link<Int>) {
  print(currentNode.data)
  guard currentNode.next != nil else { return }
  return traverseIntList(currentNode.next!)
}

func findInt(currentNode: Link<Int>, nToFind: Int) -> Link<Int>? {
  if currentNode.data == nToFind { return currentNode }
  guard currentNode.next != nil else { return nil }
  return findInt(currentNode.next!, nToFind: nToFind)
}

func deleteInt(currentNode: Link<Int>, n: Int, priorNode: Link<Int>? = nil) {
  if currentNode.data == n {
    priorNode!.deleteNext()
  } else {
    guard currentNode.next != nil else { return }
    return deleteInt(currentNode.next!, n: n, priorNode: currentNode)
  }
}

var one = Link(data: 1)
var two = Link(data: 2)
var three = Link(data: 3)
var four = Link(data: 4)
one.append(&two)
two.append(&three)
three.append(&four)
traverseIntList(one)
deleteInt(one, n: 3)
traverseIntList(one)
