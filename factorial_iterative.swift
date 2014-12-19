func factorial(n:Int) -> Int  {
  return factorialIter(1,1,n)
}

func factorialIter(product:Int,counter:Int,maxCount:Int) -> Int {
  if counter > maxCount {
    return product
  } else {
    return factorialIter((product*counter),(counter+1),(maxCount))
  }
}

println(factorial(5))
