#!/usr/bin/env swift
// http://programmingpraxis.com/2015/11/13/head-and-tail/

import Foundation

func printHeadAndTail(filename: String) {
  do {
    let text = try NSString(contentsOfFile: file, encoding: NSUTF8StringEncoding)
    let lines = text.componentsSeparatedByString("\n")
    if let first = lines.first { print("first line: \"\(first)\"") }
    if let last = lines.last { print("last line: \"\(last)\"") }
  } catch let error as NSError {
    print(error.localizedDescription)
  }
}

let file = __FILE__
printHeadAndTail(file)
