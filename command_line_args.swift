#!/usr/bin/env xcrun swift command_line_args.swift 
// http://rosettacode.org/wiki/Command-line_arguments

let args = Process.arguments
for (var i = 0; i < args.count; i++) {
  println("arg \(i): \(args[i])")
}

