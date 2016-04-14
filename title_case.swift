#!/usr/bin/env swift
// https://programmingpraxis.com/2016/04/12/titlecase/

import Foundation

func titleCase(s: String) -> String {
    func title(s: String) -> String {
        var c = Array(s.characters).map { String($0) }
        for i in 0..<c.count {
            c[i] = i == 0 ? c[i].uppercaseString : c[i].lowercaseString
        }
        return c.joinWithSeparator("")
    }
    return s.componentsSeparatedByString(" ")
            .map { title($0) }.joinWithSeparator(" ")
}

print(titleCase("programming PRAXIS"))
