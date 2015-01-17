// http://rosettacode.org/wiki/Vampire_number

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

func split(number:Int,array:[Int]) -> [Int] {
  var mutableArray = array
  if number < 10 {
    mutableArray.append(number)
    return mutableArray
  } else {
    mutableArray.append(number % 10)
    return split(number/10,mutableArray)
  }
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

func vampire(n:Int) -> [[Int]] {
  let array:[Int] = []
  let digits = quicksort(split(n,array))
  var fangs:[[Int]] = []
  let nfactors = factors(Float(n))
  for nfactor in nfactors {
    let fone = nfactor
    let ftwo = n/nfactor
    if !(fone % 10 == 0 && ftwo % 10 == 0) && (split(fone,array)).count == (split(ftwo,array)).count {
      let val = quicksort(split(fone,array) + split(ftwo,array)) 
      if val == digits {
        let pair = [fone,ftwo]
        fangs.append(pair)
      }
    } 
  }
  return fangs
}

var found = 0
var counter = 1000
while found < 25 {
  let val = vampire(counter)
  if val.count > 0 {
    println("\(counter) : \(val)")
    found++
  }
  if counter + 1 == 10_000 {
    counter = 100_000
  } else if counter + 1 == 1_000_000 {
    counter = 10_000_000
  } else {
    counter++
  }
}