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

var a = [Int](); a += 1...1_000_000
println(a.map() { tfs($0) }.reduce(0) { $0 + $1 })
