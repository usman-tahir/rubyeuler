// http://codekata.com/kata/kata02-karate-chop/

func bOne(array: [Int], element: Int, low: Int, high: Int) -> Int? {
  if high < low { return nil }
  var m = (low + high) / 2
  if array[m] == element { return m }
  return array[m] > element ? bOne(array,element,low,m-1) : bOne(array,element,m+1,high) 
}

func bTwo(array: [Int], element: Int) -> Int? {
  var mid = array.count / 2
  while array[mid] != element {
    if array[mid] > element {
      mid--
    } else if array[mid] < element {
      mid++
    }
    if array[mid+1] > element && array[mid] < element {
      return nil
    } else if array[mid] > element && array[mid-1] < element {
      return nil
    } 
  }
  return mid
}

func bThree(array: [Int], element: Int) -> Int? {
  var low = 0
  var high = array.count
  var mid = high/2
  while array[mid] != element {
    if element < array[mid] {
      high = mid
      mid = (low + mid) / 2
    } else if element > array[mid] {
      low = mid
      mid = (mid + high) / 2
    }
    if array[mid+1] > element && array[mid] < element { return nil }
    if array[mid] > element && array[mid-1] < element { return nil }
  }
  return mid
}

let test = [0,1,4,5,6,7,8,9,12,26,45,67,78,90,98,123,211,234,456,769,865,2345,3215,14345,24324]

println(bOne(test,98,0,test.count))
println(bTwo(test,98))
println(bThree(test,98))
