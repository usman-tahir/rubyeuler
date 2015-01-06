// http://rosettacode.org/wiki/Digital_root

func findRoot(number:Int,persistence:Int) -> [Int] {
  if integerLength(number) == 1 {
    return [number,persistence]
  } else {
    var tempArray:[Int] = []
    let val = split(number,tempArray)
    let valSum = sum(val,0)
    return findRoot(valSum,persistence+1)
  }
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

func sum(array:[Int],index:Int) -> Int {
  if index >= array.count {
    return 0
  } else {
    return array[index] + sum(array,index+1)
  }
}

func integerLength(number:Int) -> Int {
  var testArray:[Int] = []
  return split(number,testArray).count
}

let testNumbers = [627615, 39390, 588225, 393900588225,3]

func showResult(array:[Int],index:Int) -> Int {
  if index >= array.count {
    return 0
  } else {
    let number = array[index]
    let result = findRoot(number,0)
    println("\(number) has digital root of \(result[0]) and additive persistence of \(result[1])")
    return showResult(array,index+1)
  }
}

showResult(testNumbers,0)
