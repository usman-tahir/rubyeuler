// http://projecteuler.net/problem=2

var fibo:[Int] = [1,2]
while fibo.last <= 4_000_000 {
    fibo.append(fibo[fibo.count-1] + fibo[fibo.count-2])
}

let result = fibo.map { $0 % 2 == 0 ? $0 : 0 }.reduce(0, combine: +)
println(result)
