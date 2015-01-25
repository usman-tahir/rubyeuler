// http://rosettacode.org/wiki/Amicable_pairs

func divisors(n:Int) -> [Int] {
  var dvsrs:[Int] = []
  for var i = 1; i < n; i++ {
    if n % i == 0 {
      dvsrs.append(i)
    }
  }
  return dvsrs
}

func sum(array:[Int],index:Int) -> Int {
  if index == array.count {
    return 0
  } else {
    return array[index] + sum(array,index+1)
  }
}

func findAmicablePairs(limit:Int) -> [[Int]] {
  var pairs:[[Int]] = []
  var amicables = Dictionary<Int, Int>()
  for var i = 1; i < limit; i++ {
    amicables[i] = sum(divisors(i),0)
  }
  for (key,value) in amicables {
    var temp:[Int] = [key,value]
    if amicables[value] == key && value != key {
      //let pair = temp.sort
      //if !pairs.contains(pair) {
      pairs.append(temp) 
      //}
    } 
  }
  return pairs
}

/*

func uniq(array:[Int]) -> [Int] {

}

*/

println(findAmicablePairs(20_00))
