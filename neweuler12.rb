# http://projecteuler.net/problem=12

def find_factors(number)
  1.upto(Math.sqrt(number)).select { |i| (number % i).zero?}.inject([]) do |f,i|
    f << i
    f << number/i unless i == number/i
    f
  end.sort.count
end

def generate_nth_triangle_number(nth)
  triangle = (nth * (nth + 1) ) / 2
end

def find_triangle_with_over_five_hundred_divisors
  nth_counter = 1
  until find_factors(generate_nth_triangle_number(nth_counter)) > 500
    nth_counter += 1
    break if find_factors(generate_nth_triangle_number(nth_counter)) > 500
  end
  generate_nth_triangle_number(nth_counter)    
end  

puts find_triangle_with_over_five_hundred_divisors   