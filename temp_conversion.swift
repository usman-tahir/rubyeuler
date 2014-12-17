// http://rosettacode.org/wiki/Temperature_conversion

func kelvinToC(temp:Double) -> Double {
  return temp - 273.15
} 

func kelvinToF(temp:Double) -> Double {
  return (kelvinToC(temp) * 1.800) + 32.00
}

func kelvinToRankine(temp:Double) -> Double {
  return (kelvinToF(temp) - 32) + 491.67
}

let temperature = 21.0
println("\(temperature) Kelvin")
println(kelvinToC(temperature))
println(kelvinToF(temperature))
println(kelvinToRankine(temperature))
