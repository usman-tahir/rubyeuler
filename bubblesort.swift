// http://rosettacode.org/wiki/Sorting_algorithms/Bubble_sort

func bubbleSort(toSort: [Int]) -> [Int] {
  var sortableArray = toSort
  var done: Bool = false
  while (!done) {
    done = true
    for var i = 1; i < sortableArray.count; ++i {
      if (sortableArray[i-1] > sortableArray[i]) {
        swap(&sortableArray[i-1], &sortableArray[i])
        done = false
      }
    }
  }
  return sortableArray
}

var values = [9,8,7,3,1,100]
println(bubbleSort(values))

