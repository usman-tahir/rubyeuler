// http://programmingpraxis.com/2015/07/07/powerset/

import Foundation

func powerSet(list: [Int]) -> [[Int]]? {
  var result = [list]
  for element in list {
    let tempList = list.filter( { $0 != element } )
    result.append(tempList)
    for tempElement in tempList {
      let newTempList = tempList.filter( { $0 != tempElement } )
      result.append(newTempList)
    }
  }
  var uniqueResult = [[]]
  for element in result {
    if !contains(uniqueResult,element) {
      uniqueResult.append(element)
    }
  }
  return uniqueResult as? [[Int]]
}

var test = [1,2,3]
var result = powerSet(test)
println(result!)
