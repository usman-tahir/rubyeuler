# http://rosettacode.org/wiki/Narcissistic_decimal_number
# if n is 153 then m, the number of digits is 3 and we have 
# 1**3 + 5**3 + 3**3 = 1 + 125 + 27 = 153 and so 153 is a narcissistic 
# decimal integer number. 
start_time = Time.now

def narcissistic_decimal_number(number)
  is_narcissistic = false
  power = number.to_s.length
  testing_array = number.to_s.split(//).map {|n| n.to_i}
  accumulator = 0
  testing_array.each do |n|
    accumulator += (n**power)
  end
  testing_array =[]
  is_narcissistic = true if number == accumulator
  is_narcissistic
end

def gen_first(number)
  narcissistic_numbers =[]
  counter = 0
  until narcissistic_numbers.count == number
    is_narcissistic = narcissistic_decimal_number(counter)
    narcissistic_numbers << counter if is_narcissistic == true
    puts counter if is_narcissistic == true
    counter += 1
  end
  narcissistic_numbers
end    

puts gen_first(25).inspect
puts ((Time.now-start_time).to_f).to_s + "s"