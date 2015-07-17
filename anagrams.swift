// http://rosettacode.org/wiki/Anagrams

import Foundation

func findAnagrams(file: String) ->  [String:[String]] {
  let fileContent = NSString(contentsOfFile: file, encoding: NSUTF8StringEncoding, error: nil)!
  let words = fileContent.componentsSeparatedByString("\n") as! [String]
  var anagramDict = [String:[String]]()
  for word in words {
    let chars = splitWordIntoLetters(word as String)
    if anagramDict[chars] == nil {
      anagramDict[chars] = [word as String]
    } else {
      var values = anagramDict[chars]
      values?.append(word)
      anagramDict[chars] = values 
    }
  }
  return anagramDict
}

func splitWordIntoLetters(word: String) -> String {
  let char = Array(word).sorted() { $0 < $1 }
  let stringResult = char.description
  return stringResult
}

func countAnagrams() {
  let anagrams = findAnagrams("unixdict.txt")
  var anagramCount = 4
  var mostAnagrams: [String] = []
  for (key, value) in anagrams {
    if value.count >= anagramCount {
      println("\(value.count): \(value)")
    }
  }
}

countAnagrams()
