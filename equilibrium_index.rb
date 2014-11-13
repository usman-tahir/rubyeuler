# http://rosettacode.org/wiki/Equilibrium_index

def equilibrium_index(array)
  equ_indices =[]
  array.each_index do |index|
    #break if array[index+1] == nil
    equ_indices << index if array[0...index].inject(:+) == array[index+1..-1].inject(:+)
  end
  equ_indices << 0 if array[0] == array[1..-1].inject(:+)
  equ_indices << array.find_index(array[-1]) if array[0..-2].inject(:+) == array[-1]
  equ_indices
end

test_array = [-7,1,5,2,-4,3,0]
p equilibrium_index(test_array)
