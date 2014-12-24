// http://programmingpraxis.com/2014/11/25/thou-impertinent-urchin-faced-miscreant/

func wordsmanship(code:Int) -> String {
  let column1 = ["integrated","total","systematized","parallel","functional",
                  "responsive","optional","synchronized","compatible","balanced"]
  let column2 = ["management","organizational","monitored","reciprocal","digital",
                  "logistical","transitional","incremental","third-generation", 
                  "policy"]
  let column3 = ["options","flexibility","capability","mobility","programming",
                  "concept","time-phase","projection","hardware","contingency"]
  if code > 999 || code < 0 {
    return "(Enter a three digit code between 000 and 999!)"
  } else {
    var value = code
    var digits:[Int] = []
    while value > 0 {
      digits.append(value % 10)
      value /= 10
    }
    let colIndices = reverse(digits)
    let firstWord = column1[colIndices[0]]
    let secondWord = column2[colIndices[1]]
    let thirdWord = column3[colIndices[2]]
    return "\(firstWord) \(secondWord) \(thirdWord)"
  }
}

println(wordsmanship(123))
