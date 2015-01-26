// http://rosettacode.org/wiki/Averages/Mode

func findMode(array:[Int]) -> Int {
  var hash = Dictionary<Int, Int>()
  for var i = 0; i < array.count; i++ {
    if hash[array[i]] == nil {
      hash[array[i]] = 1
    } else {
      hash[array[i]]! = hash[array[i]]! + 1
    }
  }
  var maxValue:Int = 1
  var maxKey:Int =  array[0]
  for (key,value) in hash {
    if value > maxValue {
      maxKey = key
      maxValue = value
    }
  }
  return maxKey
}

let values = [1, 2, 3, 1, 2, 4, 2, 5, 2, 3, 3, 1, 3, 6]
let values2 = [1,1,1,1,1,2,2,3,3,3,3]
println(findMode(values2))
