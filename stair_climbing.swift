// http://rosettacode.org/wiki/Stair-climbing_puzzle
import Darwin

var start_position = 5

func stepUp() -> () {
  while !step() {
    return stepUp()
  }
} 

func step() -> Bool {
  let randomNumber = arc4random_uniform(10)
  if randomNumber % 2 == 0 {
    start_position = start_position - 1
    println("fall to \(start_position)")
    return false
  } else {
    start_position = start_position + 1
    println("climb to \(start_position)")
    return true
  }
}

stepUp()