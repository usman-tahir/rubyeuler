# http://rosettacode.org/wiki/Abundant,_deficient_and_perfect_number_classifications

def factors(num)
  1.upto(Math.sqrt(num)).select {|i| (num % i).zero?}.inject([]) do |f, i| 
    f << i
    f << num/i unless i == num/i
    f
  end.sort
end

def classify(number)
  return "abundant" if factors(number).inject(:+) - number > number
  return "perfect" if factors(number).inject(:+) - number == number
  return "deficient" if factors(number).inject(:+) - number < number
end

abun = 0
perf = 0
defic = 0
(1..20_000).each do |n|
  case
  when classify(n) == "abundant"
    abun += 1
  when classify(n) == "perfect"
    perf += 1
  when classify(n) == "deficient"
    defic += 1
  end
end

puts "deficients: #{defic}"
puts "perfects: #{perf}"
puts "abundants: #{abun}"
