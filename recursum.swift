func recurSum(arrayToSum: [Int], arraySize: Int) -> Int {
  let mutableArray = arrayToSum
  if (arraySize == 0) {
    return 0
  } else {
    let lastNumber = mutableArray[arraySize-1]
    let allButLastSum = recurSum(mutableArray,arraySize-1)
    return lastNumber + allButLastSum
  }
}

var testArray = [1,2,3,4,5]
println(recurSum(testArray,testArray.count))
