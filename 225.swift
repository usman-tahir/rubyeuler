// http://codegolf.stackexchange.com/questions/28786/write-a-program-that-makes-2-2-5

func +(left: Int, right: Int) -> Int {
  return (left == 2 && right == 2) ? add(add(left,right),1) : add(left,right)
}

func add(one: Int, two: Int) -> Int {
  return two == 0 ? one : add(one.successor(), two.predecessor())
}

println(2+2)
