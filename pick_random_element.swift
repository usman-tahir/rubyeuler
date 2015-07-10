// http://rosettacode.org/wiki/Pick_random_element

import Foundation

func randomElement(list: [Int]) -> Int {
  let length = UInt32(list.count)
  let randomIndex = Int(arc4random() % length)
  return list[randomIndex]
}

let list = [1,2,3,4,5,6,7,8,9,10]
println(randomElement(list))
