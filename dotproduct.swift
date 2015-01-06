// http://rosettacode.org/wiki/Dot_product

func dotProduct(arrayOne:[Int],arrayTwo:[Int]) -> Int {
  var dotProductArray:[Int] = []
  for var i = 0; i < arrayOne.count; i++ {
    let product = arrayOne[i] * arrayTwo[i]
    dotProductArray.append(product)
  }
  return sumArray(dotProductArray,0)
}

func sumArray(array:[Int],index:Int) -> Int {
  if index >= array.count {
    return 0
  } else {
    return array[index] + sumArray(array,index+1)
  }
}

let testArrayOne = [1,3,-5]
let testArrayTwo = [4,-2,-1]
println(dotProduct(testArrayOne,testArrayTwo))
