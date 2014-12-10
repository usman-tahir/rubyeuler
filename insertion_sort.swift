// http://rosettacode.org/wiki/Sorting_algorithms/Insertion_sort

func insertionSort(toSort: [Int]) -> [Int] {
  var sortableArray = toSort
  for var i = 1; i < toSort.count; ++i {
    var value = sortableArray[i]
    var j = i - 1
    while j >= 0 && sortableArray[j] > value {
      sortableArray[j+1] = sortableArray[j]
      j = j - 1
    }
    sortableArray[j+1] = value
  }
  return sortableArray
}

var arrayToSort = [100, 2, 56, 200, -52, 3, 99, 33, 177, -199]
println(insertionSort(arrayToSort))
