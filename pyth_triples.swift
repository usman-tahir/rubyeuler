// http://programmingpraxis.com/2014/12/23/ancient-algorithms/

func triple(m:Int,n:Int) -> [Int] {
  var result:[Int] = []
  result.append(m*m - n*n)
  result.append(2 * m * n)
  result.append(m*m + n*n)
  return result
}

println(triple(2,1))