# http://rosettacode.org/wiki/Sorting_algorithms/Permutation_sort

module Enumerable
  
  def sorted?
    each_cons(2).all? { |a, b| (a <=> b) <= 0 }
  end

end

class Array

  def permutation_sort
    permutations = self.permutation.to_a
    permutations.each do |permutation|
      return permutation if permutation.sorted?
    end
  end    

end  

a = [8,3,10,6,1,9,7,2,5,4]

p a.permutation_sort
