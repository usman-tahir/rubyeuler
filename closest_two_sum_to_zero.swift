// http://programmingpraxis.com/2015/06/23/closest-two-sum-to-zero/

func closestTwoSumToZero(array: [Int]) -> [Int] {
  var closestElementOne = array[0]
  var closestElementTwo = array[1]
  var distanceFromZero = abs(array[0] + array[1])
  for (var x = 1; x < array.count; x++) {
    for (var y = x+1; y < array.count; y++) {
      if (abs(array[x] + array[y]) < distanceFromZero) {
        closestElementOne = array[x]
        closestElementTwo = array[y]
        distanceFromZero = abs(array[x] + array[y])
      }
    }
  }
  return [closestElementOne,closestElementTwo]
}

let test = [45, -29, -96, -7, -17, 72, -60]
println(closestTwoSumToZero(test))

