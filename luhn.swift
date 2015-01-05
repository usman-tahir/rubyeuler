// http://rosettacode.org/wiki/Luhn_test_of_credit_card_numbers

func checkSum(n:Int) -> Bool {
  var checkArray:[Int] = []
  // reverse the digits
  checkArray = split(n,checkArray)
  // sum the odd digits
  var s1:Int = 0
  var s2:Int = 0
  for var i = 0; i < checkArray.count; i++ {
    if i % 2 == 0 {
      s1 += checkArray[i]
    }
  }
  for var i = 1; i < checkArray.count; i++ {
    if i % 2 == 1 {
      let evenDigits = checkArray[i] * 2
      if evenDigits < 10 {
        s2 += evenDigits
      } else if evenDigits >= 10 {
        var evenDigitsArray:[Int] = []
        s2 = s2 + sum(split(evenDigits,evenDigitsArray))
      }
    }
  }
  return (s1 + s2) % 10 == 0
}

func split(n:Int,array:[Int]) -> [Int] {
  var mutableArray = array
  if n < 10 {
    mutableArray.append(n)
    return mutableArray 
  } else {
    mutableArray.append(n%10)
    return split(n/10,mutableArray)
  }
}

func sum(array:[Int]) -> Int {
  var arraySum = 0
  for var i = 0; i < array.count; i++ {
    arraySum += array[i]
  }
  return arraySum
}

let numbersToCheck:[Int] = [49927398716, 49927398717, 
                            1234567812345678, 1234567812345670]

for number in numbersToCheck {
  let value:Bool = checkSum(number)
  println("\(number): \(value)")
}
