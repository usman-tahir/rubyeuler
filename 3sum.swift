// http://programmingpraxis.com/2013/06/18/3sum/

func findZeroSumTerms(array: [Int]) -> [Int] {
  var solutions: [Int] = []
  for var i = 0; i < array.count; i++ {
    for var j = i; j < array.count; j++ {
      var testVal = -(array[i] + array[j])
      if contains(array,testVal) {
        solutions.append(array[i]) 
        solutions.append(array[j])
        solutions.append(testVal)
      }
    }
  }
  return solutions
}

var testArray = [8, -25, 4, 10, -10, -7, 2, -3] 
println(findZeroSumTerms(testArray))
