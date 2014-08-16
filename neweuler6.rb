# http://projecteuler.net/problem=6

def sum_of_squares_of_first(number)
  sum_of_squares = 0
  (1..number).each do |num|
    sum_of_squares += num ** 2
  end
  sum_of_squares	
end

def square_of_sums_of_first(number)
  sum_accumulator = 0
  (1..number).each do |num|
    sum_accumulator += num
  end
  square_of_sums = sum_accumulator ** 2
end		

def squares_minus_sums(number)
  square_of_sums_of_first(number) - sum_of_squares_of_first(number)
end

puts squares_minus_sums(100)