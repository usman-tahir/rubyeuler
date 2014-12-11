func recurSum(arrayToSum: [Int], arraySize: Int) -> Int {
  let functionArray = arrayToSum
  if (arraySize == 0) {
    return 0
  } else {
    let lastNumber = functionArray[arraySize-1]
    let allButLastSum = recurSum(functionArray,arraySize-1)
    return lastNumber + allButLastSum
  }
}

var testArray = [1,2,3,4,5]
println(recurSum(testArray,testArray.count))
