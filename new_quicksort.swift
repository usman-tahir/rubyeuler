#!/usr/bin/env swift
// quicksort

func quicksort(list: [Int]) -> [Int] {
  guard list.count > 1 else { return list }
  var lesser = [Int]()
  var greater = [Int]()
  var equal = [Int]()
  let pivot = list[list.count/2]
  for e in list {
    e < pivot ? lesser.append(e) : e > pivot ? greater.append(e) : equal.append(e)
  }
  return quicksort(lesser) + equal + quicksort(greater)
}

let o = [10,8,100,1,637,234,233,235,98,1000,2,5,6]
print(quicksort(o))
