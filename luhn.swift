#!/usr/bin/env swift
// http://rosettacode.org/wiki/Luhn_test_of_credit_card_numbers

import Foundation

func checkSum(n: Int) -> Bool {
    var checkArray = split(n)
    var s1 = 0; var s2 = 0
    for i in 0..<checkArray.count {
        if i % 2 == 0 { s1 += checkArray[i] }
    }
    for i in 0..<checkArray.count {
        if i % 2 == 1 {
            let evenDigits = checkArray[i] * 2
            s2 += evenDigits < 10 ? evenDigits : sum(split(evenDigits))
        }
    }
    return (s1 + s2) % 10 == 0
}

func split(n: Int, d: [Int] = []) -> [Int] {
    var newD = d
    if n < 10 {
        newD.append(n)
        return newD
    } else {
        newD.append(n%10)
        return split(n/10, d: newD)
    }
}

func sum(list: [Int], i: Int = 0, acc: Int = 0) -> Int {
    guard i < list.count else { return acc }
    return sum(list, i: i+1, acc: acc+list[i])
}

for number in [49927398716, 49927398717,
    1234567812345678, 1234567812345670] {
        print("\(number): \(checkSum(number))")
}

