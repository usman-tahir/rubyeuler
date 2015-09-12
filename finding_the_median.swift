#!/usr/bin/env swift
// http://programmingpraxis.com/2015/09/11/finding-the-median/

func quicksort(n: [Int]) -> [Int] {
  if n.count <= 1 { return n }
  var lss = [Int](); var grt = [Int](); var equ = [Int]()
  let pivot = n[n.count/2]
  for e in n { e < pivot ? lss.append(e) : e > pivot ? grt.append(e) : equ.append(e) }
  return quicksort(lss) + equ + quicksort(grt)
}

func median(n: [Int]) -> Double {
  let s = quicksort(n)
  if s.count % 2 == 1 {
    return Double(s[(s.count-1)/2])
  } else {
    return (Double(s[(s.count-1)/2]) + Double(s[(s.count+1)/2])) / 2.0
  }
}

for t in [[2,4,5,7,3,6,1],[5,2,1,6,3,4]] { 
  let r = median(t)
  r % 2 == 0.0 ? println(Int(r)) : println(r)
}
