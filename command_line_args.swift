// http://rosettacode.org/wiki/Command-line_arguments

let args = Process.arguments
let length = args.count
for (var i = 1; i < length; i++) {
  println("arg \(i): \(args[i])")
}

