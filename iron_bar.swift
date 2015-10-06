#!/usr/bin/env swift
// http://programmingpraxis.com/2015/10/06/the-iron-bar/

func ironBar(n: Int...) -> (actualMedian: Int, ironBarMedian: Int) {
  let offset = n.count % 2 == 1 ? 0 : 1
  let actualMedian = n.sort { $0 < $1 }[n.count/2-offset]
  var ironBarMedian = n[0]
  for i in 1..<n.count {
    ironBarMedian += n[i] > ironBarMedian ? 1 : n[i] < ironBarMedian ? -1 : 0
  }
  return (actualMedian, ironBarMedian)
}

print(ironBar(29, 26, 31, 30, 30, 28, 28, 31, 24, 32))
