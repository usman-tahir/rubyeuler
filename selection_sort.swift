// http://rosettacode.org/wiki/Sorting_algorithms/Selection_sort

func selectionSort(arrayToSort:[Int]) -> [Int] {
  var mutableArray = arrayToSort
  for var i = 0; i < mutableArray.count; i++ {
    var min = i
    while min < mutableArray.count {
      if mutableArray[min] < mutableArray[i] {
        swap(&mutableArray[i], &mutableArray[min])
      }
      min += 1
    }
  }
  return mutableArray
}

let testArray1 = [26, 45, 4, 98, 769, 234, 24324, 78, 865, 0, 6, 123, 7, 14345, 5, 12, 211, 1, 3215, 67, 8, 90, 9, 2345, 456]
let testArray2 = [7,3,1,5,10,0,4]

println(selectionSort(testArray2))
println(selectionSort(testArray1))
