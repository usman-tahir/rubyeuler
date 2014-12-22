// http://programmingpraxis.com/2014/11/21/an-array-of-zeroes/

let testArray = [1,0,2,0,0,3,4]

func moveZeroes(testArray:[Int]) -> [Int] {
  var mutableArray = testArray
  var low = 0
  var high = (mutableArray.count - 1)
  while low < high {
    if mutableArray[low] == 0 && mutableArray[high] != 0 {
      swap(&mutableArray[low], &mutableArray[high])
      ++low
      --high
    } else if mutableArray[low] == 0 && mutableArray[high] == 0 {
      --high
    } else if mutableArray[low] != 0 {
      ++low
    }
  }
  return mutableArray
}

println(moveZeroes(testArray))
