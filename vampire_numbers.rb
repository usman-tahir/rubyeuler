# http://rosettacode.org/wiki/Vampire_number

# factorization borrowed from http://rosettacode.org/wiki/Factors_of_an_integer#Ruby
def factors(n)
  (1..Math.sqrt(n)).select {|f| n % f == 0}.inject([]) {|f,i| f << n/i; f << i}.sort.uniq
end

def vampire?(number)
  digits = number.to_s.split(//).sort
  return false if digits.count.odd?
  fangs = []
  factors(number).select {|fctr| fctr.to_s.length == digits.count/2 }.each do |factor| 
    f_one, f_two = factor, number/factor
    next if f_one % 10 == 0 && f_two % 10 == 0
    f_one_ary, f_two_ary = f_one.to_s.split(//), f_two.to_s.split(//)
    fangs << [f_one,f_two] if [f_one_ary + f_two_ary].flatten.sort == digits
  end
  return false if fangs.empty?
  fangs.each { |fang| fang.sort! }.uniq
end

found = 0
counter = 1000
until found == 25
  value = vampire?(counter)
  if value != false
    puts "#{counter} : #{value}"
    found += 1
  end
  if counter + 1 == 10_000
    counter = 100_000
  elsif counter + 1 == 1_000_000
    counter = 10_000_00
  else
    counter += 1
  end
end

[16758243290880, 24959017348650, 14593825548650].each do |n|
  val = vampire?(n)
  puts val != false ? "#{n} : #{val}" : "#{val}"
end
