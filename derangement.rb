# http://rosettacode.org/wiki/Permutations/Derangements

def derangement(list)
  list.permutation.to_a.each {|p| list.each_index {|i| p[i] = nil if list[i] == p[i]}}.reject {|p| p.include?(nil)}
end

def subfactorial(n)
  n = derangement((1..n).to_a).count
end

p derangement([0,1,2,3])
p derangement((0..9).to_a).count
p subfactorial(10)
