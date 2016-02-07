#!/usr/bin/env swift

import Foundation

/// Prime check using Miller-Rabin Test
/// - Parameter n: number to check for primality
/// - Returns: Bool
/// - Note: Adapted from SICP exercise 1.28
func isPrime(n: Int) -> Bool {
    func even(n: Int) -> Bool {
        return n % 2 == 0
    }
    
    func square(n: Int) -> Int {
        return n * n
    }
    
    func random(n: Int) -> Int {
        return Int(arc4random_uniform(UInt32(n)))
    }
    
    func expmod(base: Int, exp: Int, m: Int) -> Int {
        return exp == 0 ? 1 : even(exp) ? millerRabinSquareCheck(expmod(base, exp: (exp/2), m: m), m: m) : (base * expmod(base, exp: (exp-1), m: m)) % m
    }
    
    func millerRabinSquareCheck(x: Int, m: Int) -> Int {
        return (!((x==1) || ((m-1)==x))) && square(x) % m == 1 ? 0 : (square(x)) % m
    }
    
    func millerRabinTest(n: Int) -> Bool {
        return expmod((random(n-2)+2), exp: n-1, m: n) == 1
    }
    
    func fastPrime(n: Int, t: Int) -> Bool {
        return t == 0 ? true : millerRabinTest(n) ? fastPrime(n, t: t-1) : false
    }
    
    return fastPrime(n, t: 10)
}

/// Produce a list of prime numbers up to a given limit
/// - Parameter limit: maximum value for the list
/// - Returns: [Int]
func findPrimesUpTo(limit: Int) -> [Int] {
    var primes = [Int]()
    for i in 2...limit {
        if isPrime(i) { primes.append(i) }
    }
    return primes
}

/// Find the largest 'consecutive prime sum' below a given limit
/// - Parameter limit: ceiling for maximum value
/// - Parameter primesCount: number of primes to search (defaults to 10_000)
/// - Returns: Int
func largestConsecutivePrimeSumBelow(limit: Int, primesCount: Int = 10000) -> Int {
    let primes = findPrimesUpTo(primesCount)
    var longestSequence = [Int]()
    for i in 0..<10 {
        var j = i
        var sumOfSequence = 0
        while sumOfSequence < limit {
            j += 1
            let consecutivePrimes = Array(primes[i...j])
            sumOfSequence = consecutivePrimes.reduce(0, combine: +)
            if isPrime(sumOfSequence) && consecutivePrimes.count > longestSequence.count {
                longestSequence = consecutivePrimes
            }
        }
    }
    return longestSequence.reduce(0, combine: +)
}

print(largestConsecutivePrimeSumBelow(1000000))