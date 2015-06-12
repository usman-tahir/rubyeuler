import Foundation

func randomTotal(k: Int, n: Int) -> [Int] {
    var test = [Int]()
    var result = [Int]()
    for (var i = 1; i < k; i++) {
        let v = random() % (n - k)
        test.append(v)
    }
    let t = test.sort(<)
    for (var i = 1; i < t.count; i++) {
        result.append(t[i] - t[i-1])
    }
    result.append(t[0] - 0)
    result.append((n - k) - t[t.count-1])
    return result.map( {$0+1} )
}

let k = 4
let n = 9
for (var i = 0; i < 10; i++) {
    let a = randomTotal(k, n: n).sort(<)
    print(a)
    print(a.reduce(0, combine: +))
}

