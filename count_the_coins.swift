// http://rosettacode.org/wiki/Count_the_coins

func countChange(amount:Int) -> Int {
  return cc(amount,4)
}

func cc(amount:Int,kindsOfCoins:Int) -> Int {
  if amount == 0 {
    return 1
  } else if (amount < 0) || (kindsOfCoins == 0) {
    return 0
  } else {
    return (cc(amount,kindsOfCoins-1) + cc(amount-firstDenomination(kindsOfCoins), kindsOfCoins))
  }
}

func firstDenomination(kindsOfCoins:Int) -> Int {
  if kindsOfCoins == 1 {
    return 1
  } else if kindsOfCoins == 2 {
    return 5
  } else if kindsOfCoins == 3 {
    return 10
  } else if kindsOfCoins == 4 {
    return 25
  } else {
    return 0
  }
}

println(countChange(100))
