#!/usr/bin/env swift
// http://rosettacode.org/wiki/Set_consolidation

func uniqueArray<T: Comparable>(s: [T]) -> [T] {
  var temp = [T]()
  for e in s { if !temp.contains(e) { temp.append(e) } }
  return temp
}

func setConsolidation<T: Comparable>(s1: [T], s2: [T]) -> ([T],[T],[T]?) {
  for e in s1 {
    if s2.contains(e) { return (s1,s2,uniqueArray(s1+s2)) }
  }
  return (s1,s2,nil)
}

// example 1:
let oneOne = ["A","B"]
let oneTwo = ["C","D"]
print(setConsolidation(oneOne, s2: oneTwo).2)

// example 2:
let twoOne = ["A","B"]
let twoTwo = ["B","D"]
print(setConsolidation(twoOne, s2: twoTwo).2)

// example 3:
let threeOne = ["A","B"]
let threeTwo = ["C","D"]
let threeThree = ["D","B"]
if let consolidatedSet = setConsolidation(threeOne, s2: threeThree).2 {
  print(setConsolidation(consolidatedSet, s2: threeTwo).2)
}

// example 4:
let fourOne = ["H","I","J"]
let fourTwo = ["A","B"]
let fourThree = ["C","D"]
let fourFour = ["D","B"]
let fourFive = ["F","G","H"]
if let consolidatedOne = setConsolidation(fourTwo, s2: fourFour).2 {
  print(setConsolidation(consolidatedOne, s2: fourThree).2)
}
print(setConsolidation(fourOne, s2: fourFive).2)

