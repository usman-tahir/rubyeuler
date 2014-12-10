// http://rosettacode.org/wiki/Hailstone_sequence

func hailstoneSequence(number: Int) -> [Int] {
  var sequenceForNumber: [Int] = []
  var testValue = number
  while (testValue != 1) {
    sequenceForNumber.append(testValue)
    testValue = hailstoneNext(testValue)
  }
  sequenceForNumber.append(1)
  return sequenceForNumber
}

func hailstoneNext(number: Int) -> Int {
  if (number == 1) {
    return 1
  } else if (number % 2 == 0) {
    return number/2
  } else if (number % 2 != 0) {
    return ((3 * number) + 1)
  }
  return 0
}

println(hailstoneSequence(27))
