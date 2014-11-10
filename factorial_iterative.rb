def factorial(number)
  factorial_iterative(1,1,number)
end

def factorial_iterative(product,accumulator,max_count)
  if accumulator > max_count
    return product
  else
    factorial_iterative((product*accumulator),(accumulator+1),(max_count))
  end
end

p factorial(5)
