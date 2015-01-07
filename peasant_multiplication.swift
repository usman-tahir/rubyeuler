// http://programmingpraxis.com/2014/12/23/ancient-algorithms/

func product(left:Int,right:Int) -> Int {
  var prod:Int = 0
  var leftVal:Int = left
  var rightVal:Int = right
  while leftVal > 0 {
    if leftVal % 2 == 1 {
      prod = rightVal + prod
    }
    leftVal = leftVal / 2
    rightVal = rightVal * 2
  }
  return prod
}

println(product(3,4))
