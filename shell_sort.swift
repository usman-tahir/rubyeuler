// http://rosettacode.org/wiki/Sorting_algorithms/Shell_sort

func shellSort(array:[Int]) -> [Int] {
  var mutableArray = array
  let len = mutableArray.count
  var gap = len/2
  while gap > 0 {
    for var i = gap; i < len; i++ {
      var temp = mutableArray[i]
      var j = i
      while (j >= gap) && (mutableArray[j-gap] > temp) {
        mutableArray[j] = mutableArray[j-gap]
        j = j - gap
      }
      mutableArray[j] = temp
    }
    gap = gap/2
  }
  return mutableArray
}

let input = [6, 5, 3, 1, 8, 7, 2, 4]
println(shellSort(input))
