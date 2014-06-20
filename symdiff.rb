# http://rosettacode.org/wiki/Symmetric_difference
start_time = Time.now
set_a = ["John", "Bob", "Mary", "Serena"]
set_b = ["Jim", "Mary", "John", "Bob"]

# enumerate the items that are in A or B but not both.

def sym_difference(array1, array2)
  symmetric_difference = []
  symmetric_difference << (array1 - array2)
  symmetric_difference << (array2 - array1)
  symmetric_difference.sort
end

puts sym_difference(set_a, set_b)
puts ((Time.now - start_time).to_f).to_s + "s"	
