# http://rosettacode.org/wiki/Power_set

def find_powerset(array)
  counter = 1
  pwrset = []
  until counter > array.count
    pwrset << array.combination(counter).to_a
    counter += 1
  end
  result = [] << []
  pwrset.each { |sub| sub.each { |subsub| result << subsub } }
  result
end  

test_array = [2, 3, 5, 7]
p find_powerset(test_array)

