// http://rosettacode.org/wiki/Set_puzzle
import Darwin

func createDeck() -> [String] {
  let colors = ["red","green","purple"]
  let symbols = ["oval","squiggle","diamond"]
  let numbers = ["1","2","3"]
  let shadings = ["solid","open","striped"]
  var deck: [String] = []
  for color in colors {
    for symbol in symbols {
      for number in numbers {
        for shading in shadings {
          deck.append("\(color) - \(symbol) - \(number) - \(shading)")
        }
      }
    }
  }
  return deck
}

func shuffle(array:[String]) -> [String] {
  let max = array.count
  var mutableArray = array
  for var i = 0; i < max; i++ {
    var rand = Int(arc4random_uniform(UInt32(max)))
    swap(&mutableArray[i],&mutableArray[rand])
  }
  return mutableArray
}

func dealCards(number:Int) -> [String] {
  let cards = Array(shuffle(createDeck())[0...number])
  return cards
}

println(dealCards(4))
