// http://programmingpraxis.com/2014/02/18/two-interview-questions/

func digitProduct(n: Int, acc: Int = 1) -> (Int, Int) {
  if n < 10 {
    return (n, n * acc)
  } else {
    let newAcc = acc * (n % 10)
    let newN = n / 10
    return digitProduct(newN, acc: newAcc)
  }
}

func findSmallestThreeDigitProduct(n: Int) -> Int {
  var counter = 100
  while n != digitProduct(counter).1 {
    counter++
  }
  return counter
}

println(findSmallestThreeDigitProduct(100))

func compareArrays(a: [Int], b: [Int]) -> [Int] {
  var disjunction = [Int]()
  for element in b {
    if !contains(a,element) {
      disjunction.append(element)
    }
  }
  return disjunction
}

let one = [4,7,9,6,1,3,8] 
let two = [3,4,1,8,2,9,5,7,6]
println(compareArrays(one,two))
