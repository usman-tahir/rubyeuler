# http://rosettacode.org/wiki/Self-describing_numbers

def self_describing(n)
  digits = n.to_s.split(//).map {|d| d.to_i}
  digits.each_index {|i| return false unless digits.count(i) == digits[i]}
  return true
end

[1210,2020,21200,3211000,42101000].each {|n| puts "#{n}: #{self_describing(n)}"}
[3333,3,2021,11200,45,98].each {|n| puts "#{n}: #{self_describing(n)}"}
