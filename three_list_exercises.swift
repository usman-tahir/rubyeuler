// http://programmingpraxis.com/2013/05/07/three-list-exercises/

// 1.
func removeElementsAtInterval(array:[Int],interval:Int) -> [Int] {
  var mutableArray:[Int] = []
  for var i = 0; i < array.count; i++ {
    if !((i+1) % interval == 0) {
      mutableArray.append(array[i])
    }
  }
  return mutableArray
}

let testArrayOne = [1,2,3,4,5,6,7,8,9,10]
println(removeElementsAtInterval(testArrayOne,4))

// 2.
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

let twoTestOne = [1,2,3,4,5]
let twoTestTwo = [1,2,3,4,5]
let twoTestThree = [1,2,1,3,1,4,1,5,1]
let twoTestFour = [1,2,2,3,3,3,4,4,4,4,5,5,5,5,5]
println(removeDuplicates(twoTestOne))
println(removeDuplicates(twoTestTwo))
println(removeDuplicates(twoTestThree))
println(removeDuplicates(twoTestFour))

// 3.
func halveList(array:[Int]) -> [[Int]] {
  var firstHalf:[Int] = []
  var secondHalf:[Int] = []
  let limit = array.count / 2
  for var i = 0; i < array.count; i++ {
    if i < limit {
      firstHalf.append(array[i])
    } else {
      secondHalf.append(array[i])
    }
  }
  return [firstHalf,secondHalf]
}

let threeTest = [1,2,3,4,5]
let threeTestTwo = [2,3,1,9,0,3]
let threeTestThree = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16]
println(halveList(threeTest))
println(halveList(threeTestTwo))
println(halveList(threeTestThree))
