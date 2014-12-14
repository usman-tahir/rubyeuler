// http://rosettacode.org/wiki/Hash_from_two_arrays

func makeDictionary(keysArray:[String],valuesArray:[Int]) -> [String:Int] {
  var resultDict = Dictionary<String,Int>()
  for var i = 0; i < keysArray.count; i++ {
    resultDict[keysArray[i]] = valuesArray[i]
  }
  return resultDict
}

var keysArray = ["a","b","c"]
var valuesArray = [1,2,3]

println(makeDictionary(keysArray,valuesArray))
