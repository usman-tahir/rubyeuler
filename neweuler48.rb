# http://projecteuler.net/problem=48

def self_power_sum_up_to(number)
  sum_total = 0
  (1..number).each do |num|
    sum_total += num ** num
  end
  sum_total
end

puts self_power_sum_up_to(1000).to_s[-10..-1]    
