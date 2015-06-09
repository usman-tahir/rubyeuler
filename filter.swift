// http://rosettacode.org/wiki/Filter

func even(n:Int) -> Bool {
  return n % 2 == 0
}

let result = [1,2,3,4,5,6,7,8,9,10].filter( {even($0)} )
print("\(result)\n")

