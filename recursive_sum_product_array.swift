// http://rosettacode.org/wiki/Sum_and_product_of_an_array

func sum(array:[Int],index:Int) -> Int {
  if index >= array.count {
    return 0
  } else {
    return array[index] + sum(array,index+1)
  }
}

func product(array:[Int],index:Int) -> Int {
  if index >= array.count {
    return 1
  } else {
    return array[index] * product(array,index+1)
  }
}

let testArrayOne = [0,1,2,3]
let testArrayTwo = [1,2,3,4]

println(sum(testArrayOne,0))
println(sum(testArrayTwo,0))
println(product(testArrayOne,0))
println(product(testArrayTwo,0))
