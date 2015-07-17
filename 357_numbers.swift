// http://programmingpraxis.com/2015/03/06/357-numbers/

func tfs(i: Int) -> Int {
  var n = i
  for div in [7,5,3] {
    while n % div == 0 {
      n /= div
    }
  }
  return n == 1 ? 1 : 0
}

println([Int](1...1_000_000).map() { tfs($0) }.filter() { $0 == 1 }.count)
