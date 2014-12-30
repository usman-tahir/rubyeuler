// http://rosettacode.org/wiki/Sorting_algorithms/Bogosort
import Darwin

let array1 = [7,3,1,5,10,0,4]
let array2 = [3,1,2]

func sorted(array:[Int]) -> Bool {
  for var i = 1; i < array.count; i++ {
    if array[i-1] > array[i] {
      return false
    }
  }
  return true
}

 func shuffle(array:[Int]) -> [Int] {
  let max = array.count
  var mutableArray = array
  for var i = 0; i < max; i++ {
    var rand = Int(arc4random_uniform(UInt32(max)))
    swap(&mutableArray[i],&mutableArray[rand])
  }
  return mutableArray
}

func bogosort(array:[Int]) -> [Int] {
  var mutableArray = array
  var counter = 1
  while !sorted(mutableArray) {
    mutableArray = shuffle(mutableArray)
    println(counter)
    counter++
    if sorted(mutableArray) {
      return mutableArray
    }
  }
  return mutableArray
}

println(bogosort(array1))
