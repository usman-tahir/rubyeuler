def factorial(number)
  factorial_iterative(1,1,number)
end

def factorial_iterative(product,counter,max_count)
  if counter > max_count
    return product
  else
    factorial_iterative((product*counter),(counter+1),(max_count))
  end
end

p factorial(5)
