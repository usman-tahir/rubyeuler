// https://projecteuler.net/problem=1

let multiples = (1...999).map { $0 % 5 == 0 ? $0 : $0 % 3 == 0 ? $0 : 0 }.reduce(0, combine: +)
println(multiples)
