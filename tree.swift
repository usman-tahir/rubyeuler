#!/usr/bin/env swift
// tree ops

class Node {

  var value: Int
  var leftChild: Node?
  var rightChild: Node?
  var children: [Node?] { return [leftChild, rightChild] }

  init(value: Int, leftChild: Node? = nil, rightChild: Node? = nil) {
    self.value = value
    self.leftChild = leftChild
    self.rightChild = rightChild
  }

  func addNode(newNode: Node) {
    if newNode.value < self.value {
      if self.leftChild == nil {
        self.leftChild = newNode
      } else {
        self.leftChild!.addNode(newNode)
      }
    } else if newNode.value > self.value {
      if self.rightChild == nil {
        self.rightChild = newNode
      } else {
        self.rightChild!.addNode(newNode)
      }
    }  
  }

}

var root = Node(value: 5)
var three = Node(value: 3)
var ten = Node(value: 10)
var one = Node(value: 1)
var four = Node(value: 4)
var seven = Node(value: 7)
var twelve = Node(value: 12)
root.addNode(three)
root.addNode(ten)
root.addNode(one)
root.addNode(four)
root.addNode(seven)
root.addNode(twelve)

func preorderTraversal(node: Node) {
  print(node.value)
  if node.leftChild != nil {
    preorderTraversal(node.leftChild!)
  }
  if node.rightChild != nil {
    preorderTraversal(node.rightChild!)
  }
}

func inorderTraversal(node: Node) {
  if node.leftChild != nil {
    inorderTraversal(node.leftChild!)
  }
  print(node.value)
  if node.rightChild != nil {
    inorderTraversal(node.rightChild!)
  }
}

func postOrderTraversal(node: Node) {
  if node.leftChild != nil {
    postOrderTraversal(node.leftChild!)
  }
  if node.rightChild != nil {
    postOrderTraversal(node.rightChild!)
  }
  print(node.value)
}

func findValue(root: Node, value: Int) -> Node? {
  if root.value == value { 
    return root 
  } else if value < root.value {
    guard root.leftChild != nil else { return nil }
    return findValue(root.leftChild!, value: value)
  } else {
    guard root.rightChild != nil else { return nil }
    return findValue(root.rightChild!, value: value)
  }
}

func getTreeHeight(root: Node, counter: Int = 1) -> Int {
  let children = root.children.filter { $0 != nil }.count
  if children == 0 { return counter }
  var leftHeight = 0
  var rightHeight = 0
  if root.leftChild != nil {
    leftHeight = getTreeHeight(root.leftChild!, counter: counter + 1)
  }
  if root.rightChild != nil {
    rightHeight = getTreeHeight(root.rightChild!, counter: counter + 1)
  }
  return leftHeight > rightHeight ? leftHeight : rightHeight
}

let newRoot = Node(value: 20)
let z = Node(value: 8)
let x = Node(value: 22)
let q = Node(value: 4)
let r = Node(value: 12)
let p = Node(value: 10)
let h = Node(value: 14)
for n in [z,x,q,r,p,h] { newRoot.addNode(n) }

func getLowestCommonAncestor(root: Node, valueOne: Int, valueTwo: Int) -> Node {
  if valueOne < root.value && valueTwo < root.value {
    return getLowestCommonAncestor(root.leftChild!, valueOne: valueOne, valueTwo: valueTwo)
  } else if valueOne > root.value && valueTwo > root.value {
    return getLowestCommonAncestor(root.rightChild!, valueOne: valueOne, valueTwo: valueTwo)
  } else {
    return root
  }
}

func createBalancedTree(list: [Int]) -> [Node] {
  let sortedList = list.sort { $0 < $1 }
  let midpoint = sortedList.count/2
  let root = Node(value: sortedList[midpoint])
  var nodes = [Node]()
  nodes.append(root)
  let remainderNodes = sortedList.filter { $0 != root.value }
  for n in remainderNodes {
    let newNode = Node(value: n)
    nodes.append(newNode)
    root.addNode(newNode)
  }
  return nodes
}

func flattenTree(root: Node, list: [Int] = []) -> [Int] {
  var newList = list
  for c in root.children {
    if c != nil {
      newList += flattenTree(c!, list: newList)
    }
  }
  newList.append(root.value)
  return Array(Set(newList))
}

let flattened = flattenTree(newRoot)
let newTree = createBalancedTree(flattened)
preorderTraversal(newTree[0])
