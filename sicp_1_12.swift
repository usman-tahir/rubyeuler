// http://mitpress.mit.edu/sicp/full-text/book/book-Z-H-11.html#%_sec_1.2
// exercise 1.12: calculate elements from pascal's triangle recursively

func pascalsElement(row:Int,col:Int) -> Int {
  if (col == 0) {
    return 1
  } else if (col == row) {
    return 1
  } else {
    return (pascalsElement(row-1,col-1) + pascalsElement(row-1,col))
  }
}

println(pascalsElement(0,0))
println(pascalsElement(1,0))
println(pascalsElement(4,2))
