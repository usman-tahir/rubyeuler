// http://programmingpraxis.com/2015/07/07/powerset/

import Foundation

func powerSet(list: [Int]) -> [[Int]]? {
  var result = [[],list]
  for element in list {
    let tempList = list.filter( { $0 != element } )
    result.append(tempList)
    for tempElement in tempList {
      let newTempList = tempList.filter( { $0 != tempElement } )
      if !contains(result as Array,newTempList) {
        result.append(newTempList)
      }
    }
  }
  return result
}

let test = [1,2,3]
let result = powerSet(test)
println(result!)
