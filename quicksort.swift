// http://rosettacode.org/wiki/Sorting_algorithms/Quicksort

func quicksort(array:[Int]) -> [Int] {
  if array.count <= 1 {
    return array
  }
  var lesser:[Int] = []
  var greater:[Int] = []
  var equiv:[Int] = []
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

let testArray:[Int] = [4,65,2,-31,0,99,2,83,782,1]
println(quicksort(testArray))
