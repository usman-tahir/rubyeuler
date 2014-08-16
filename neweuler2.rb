# http://projecteuler.net/problem=2

def sum_even_fibonacci_numbers_up_to(limit_number)
  result_accumulator = 0
  fibo_number = 2
  prior_fibo_number = 1
  until fibo_number > limit_number
    result_accumulator += fibo_number if fibo_number.even?
    fibo_number, prior_fibo_number = (fibo_number + prior_fibo_number), fibo_number
  end
  result_accumulator
end

puts sum_even_fibonacci_numbers_up_to(4_000_000)     
