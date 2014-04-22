# http://projecteuler.net/problem=37
# takes forever to run, but it works
require 'prime'
runtime = Time.now

def left_test(num)
  left_primes = Array.new 
  x = num.to_s
  left_primes.push num if num.prime? == true
  num = num.to_s.reverse!
  if num.length > 1 && num.reverse.to_i.prime? == true 
    while num.length > 1 && num.reverse.to_i.prime? == true
      if num.chop.reverse.to_i.prime? == true 
      left_primes.push num.chop.reverse.to_i 
      num.chop!
      else break		
      end
    end
  elsif num.length == 1 && num.to_i.prime? == true
  left_primes.push num.to_i	
  else
  end
  return true if x.length == left_primes.count
end

def right_test(num)	
  right_primes = Array.new
  x = num.to_s
  right_primes.push num if num.prime? == true
  num = num.to_s
  if num.length > 1 && num.to_i.prime? == true
    while num.length > 1 && num.to_i.prime? == true
      if num.chop.to_i.prime? == true
      right_primes.push num.chop.to_i
      num.chop!
      else break		
      end
    end
  elsif num.length == 1 && num.to_i.prime? == true
  right_primes.push num.to_i	
  else
  end
  return true if x.length == right_primes.count
end

def include_even(number)
  test = number.to_s.scan(/./).map {|e| e.to_i}
  if test.include? [2]
    return true
  elsif test.include? [4]
    return true
  elsif test.include? [6]
    return true
  elsif test.include? [8]
    return true
  else return false
  end	
end

truncatables = []
Prime.each(1_000_000) do |num|
  next if num > 9 && include_even(num) == true
  truncatables.push num if right_test(num) == true && left_test(num) == true
  puts num.to_s + ": yes" if right_test(num) == true && left_test(num) == true
end

puts "The sum of the eleven truncatable primes is " + truncatables.inject(:+).to_s
puts ((Time.now - runtime).to_f).to_s + " s"
