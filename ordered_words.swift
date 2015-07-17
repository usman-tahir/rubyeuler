// http://programmingpraxis.com/2015/07/14/ordered-words/

import Foundation

func orderedWord(word: String) -> Bool {
  return Array(word) == Array(word).sorted() { $0 < $1 }
}

func findOrderedWords(file: String) -> [String] {
  let fileContent = NSString(contentsOfFile: file, encoding: NSUTF8StringEncoding, error: nil)!
  let words = fileContent.componentsSeparatedByString("\n") as! [String]
  var orderedWords = [String]()
  for word in words {
    if orderedWord(word) {
      orderedWords.append(word)
    }
  }
  return orderedWords
}

func findLongestOrderedWord(words: [String]) -> String {
  var longestWord = ""
  var longestWordLength = 0
  for word in words {
    if count(word) > longestWordLength {
      longestWordLength = count(word)
      longestWord = word
    }
  }
  return longestWord
}

let orderedWordsFromUnixDict = findOrderedWords("unixdict.txt")
println(findLongestOrderedWord(orderedWordsFromUnixDict))
