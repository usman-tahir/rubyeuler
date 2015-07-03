// http://programmingpraxis.com/2015/07/03/assign-y/
// assign a to y if x == 0
// assign b to y if x == 1

func assignY(x: Int, a: Int, b: Int) -> Int {
  let options:[Int] = [a,b]
  let y = options[x]
  return y
}

let exampleOne = assignY(1,12,6)
let exampleTwo = assignY(0,12,6)
println(exampleOne)
println(exampleTwo)
