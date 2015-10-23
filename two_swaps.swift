#!/usr/bin/env swift
// http://programmingpraxis.com/2015/10/23/two-swaps/

func twoSwapSort(list: [Int]) -> [Int] {
  var newList = list
  var lg = 0
  var sm = 0
  for i in (0...2) { 
    if newList[i] > newList[lg] { lg = i } 
  }
  if lg != 2 { swap(&newList[lg], &newList[2]) }
  for i in (0...2) { 
    if newList[i] < newList[sm] { sm = i } 
  }
  if sm != 0 { swap(&newList[sm], &newList[0]) }
  return newList
}

let array = [300,2,100]
print(twoSwapSort(array))