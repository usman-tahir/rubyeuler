// http://rosettacode.org/wiki/Knuth_shuffle
import Darwin

func knuthShuffle(array:[Int]) -> [Int] {
  var mutableArray:[Int] = array
  for var i = 0; i < array.count; i++ {
    let j = Int(arc4random_uniform(UInt32(array.count)))
    let k = mutableArray[i]
    mutableArray[i] = mutableArray[j]
    mutableArray[j] = k
  }
  return mutableArray
}

let testArray = [0,1,2,3,4,5,6,7,8,9]
println(knuthShuffle(testArray))
