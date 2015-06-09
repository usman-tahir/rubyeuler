// http://programmingpraxis.com/2015/06/09/leonardo-numbers/

func leonardoNumbers(n:Int) -> Int {
  return n == 0 ? 1 : n == 1 ? 1 : (leonardoNumbers(n-2) + leonardoNumbers(n-1) + 1)
}

for i in 1...50 { println(leonardoNumbers(i)) }

