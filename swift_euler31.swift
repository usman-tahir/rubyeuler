// https://projecteuler.net/problem=31

func countChange(amount:Int) -> Int {
  return cc(amount,8)
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
    return 2
  } else if kindsOfCoins == 3 {
    return 5
  } else if kindsOfCoins == 4 {
    return 10
  } else if kindsOfCoins == 5 {
    return 20
  } else if kindsOfCoins == 6 {
    return 50 
  } else if kindsOfCoins == 7 {
    return 100
  } else if kindsOfCoins == 8 {
    return 200
  } else {
    return 0
  }
}

println(countChange(200))
