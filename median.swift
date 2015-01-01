// http://rosettacode.org/wiki/Averages/Median

func median(array:[Float]) -> Float {
  var mutableArray = quicksort(array)
  if mutableArray.count % 2 == 1 {
    return mutableArray[mutableArray.count/2]
  }  else {
    return (mutableArray[mutableArray.count/2] + mutableArray[(mutableArray.count/2) - 1])/2
  }
}

func quicksort(array:[Float]) -> [Float] {
  if array.count <= 1 {
    return array
  }
  var lesser:[Float] = []
  var greater:[Float] = []
  var equiv:[Float] = []
  let pivot = array[array.count/2]
  for element in array {
    if element < pivot {
      lesser.append(element)
    } else if element > pivot {
      greater.append(element)
    } else {
      equiv.append(element)
    }
  }
  return quicksort(lesser) + equiv + quicksort(greater)
}

let testArray1:[Float] = [4.1, 5.6, 7.2, 1.7, 9.3, 4.4, 3.2]
let testArray2:[Float] = [4.1, 7.2, 1.7, 9.3, 4.4, 3.2]

println(median(testArray1))
println(median(testArray2))