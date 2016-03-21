#!/usr/bin/env swift

func evenlyDivUpToTwenty(n: Int) -> Bool {
    for d in 1...20 {
        if n % d != 0 { return false }
    }
    return true
}

func findResult(counter: Int, step: Int, fn: Int -> Bool) -> Int {
    return fn(counter) ? counter : findResult(counter+step, step: step, fn: fn)
}

let step = [2,3,5,7,11,13,17,19].reduce(1, combine: { $0 * $1 })
var counter = step

print(findResult(counter, step: step, fn: evenlyDivUpToTwenty))
