import Darwin

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

func removeDuplicates(array:[Int]) -> [Int] {
  var mutableArray:[Int] = []
  for var i = 0; i < array.count; i++ {
    let element = array[i]
    if !(contains(mutableArray,element)) {
      mutableArray.append(element)
    }
  }
  return mutableArray
}

func factors(n:Float) -> [Int] {
  let number = Int(n)
  let root = Int(sqrt(n))
  var values:[Int] = []
  var factors:[Int] = []
  for var i = 1; i <= root; i++ {
    if number % i == 0 {
      values.append(i)
    }
  }
  for value in values {
    factors.append(number/value)
    factors.append(value)
  }
  return removeDuplicates(quicksort(factors))
}

println(factors(25))

