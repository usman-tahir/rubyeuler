// https://projecteuler.net/problem=2

function fibonacciSum(l, acc, f, p) {
  if (f > l) {
    return acc
  } else {
    return f % 2 == 0 ? fibonacciSum(l,acc+f,f+p,f) : fibonacciSum(l,acc,f+p,f)
  }
}

function fibonacciSumWrapper(l) {
  return fibonacciSum(l,0,2,1)
}

console.log(fibonacciSumWrapper(4000000))
