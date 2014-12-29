// http://rosettacode.org/wiki/Binary_search

func binarySearch(array:[Int],low:Int,high:Int,value:Int) -> Int {
  if high < low {
    return -1
  }
  let mid = (low + high) / 2
  if array[mid] > value {
    return binarySearch(array,low,mid-1,value)
  } else if array[mid] < value {
    return binarySearch(array,mid+1,high,value)
  } else {
    return mid
  }
}

let testArray = [0,1,4,5,6,7,8,9,12,26,45,67,78,90,98,123,211,234,456,769,865,2345,3215,14345,24324]
println(binarySearch(testArray,0,testArray.count,11))
println(binarySearch(testArray,0,testArray.count,211))
