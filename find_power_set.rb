# http://rosettacode.org/wiki/Power_set

def find_powerset(array)
  pwrset = []
  (1...array.count).each {|n| pwrset << array.combination(n).to_a }
  result = [] << []
  pwrset.each { |sub| sub.each { |subsub| result << subsub } }
  result
end  

test_array = [2, 3, 5, 7]
p find_powerset(test_array)

