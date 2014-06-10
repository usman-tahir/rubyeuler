# http://projecteuler.net/problem=2

var fibonacciSequence: Int[] = [1,2,3,5,8]
var fiboIndex = fibonacciSequence.count-1
while fibonacciSequence[fiboIndex] < 4_000_000 {
    fibonacciSequence.append(fibonacciSequence[fiboIndex-1] + fibonacciSequence[fiboIndex])
    fiboIndex = fibonacciSequence.count-1
}

// println("\(fibonacciSequence[fiboIndex-1])")

var accumulator = 0
for number in fibonacciSequence {
    if number % 2 == 0 {
        accumulator += number
    } else {
        accumulator += 0
    }
}
println(accumulator)