// http://rosettacode.org/wiki/Sorting_algorithms/Gnome_sort

func gnomeSort(testArray:[Int]) -> [Int] {
  var modifiableArray = testArray
  var i = 1
  var j = 2
  while i < modifiableArray.count {
    if modifiableArray[i-1] <= modifiableArray[i] {
      i = j
      j = j + 1
    } else {
      swap(&modifiableArray[i-1], &modifiableArray[i])
      i = i - 1
      if i == 0 {
        i = j
        j = j + 1
      }
    }
  }
  return modifiableArray
}  

var testArray : [Int] = [100, 2, 56, 200, -52, 3, 99, 33, 177, -199]
println(gnomeSort(testArray))
