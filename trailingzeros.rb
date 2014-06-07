# http://programmingpraxis.com/2014/05/13/three-interview-questions-2/
# problem 3: output the number of trailing zeroes in the factorial of a number

start_time = Time.now

def factorial(num)
  factorial_total =[]
  (1..num).each do |number|
    factorial_total << number
  end
  return factorial_total.inject(:*)
end

def trailing_zeros(number)
  number = number.to_s
  character_counter = -1
  trailing_zeros_count = 0
  while number[character_counter] != nil
    trailing_zeros_count += 1 if number[character_counter] == "0"
    character_counter -= 1
  end	
  return trailing_zeros_count
end

puts trailing_zeros(factorial(5))		

puts ((Time.now - start_time).to_f).to_s + "s"