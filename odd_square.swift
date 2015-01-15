// http://programmingpraxis.com/2013/02/26/an-odd-way-to-square/

func square(n:Int) -> Int {
  var result = n
  let number = n
  for var i = 1; i < number; i++ {
    result = result + number
  }
  return result
}

println(square(4))
println(square(3))
println(square(9))
