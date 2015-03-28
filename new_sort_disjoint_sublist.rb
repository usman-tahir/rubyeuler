# http://rosettacode.org/wiki/Sort_disjoint_sublist

def sort_disjoint_sublit(values,indices)
  sublist = indices.map {|i| values[i]}.sort
  sublist.each_index {|i| values[indices.sort[i]] = sublist[i]}
  values
end

val = [7, 6, 5, 4, 3, 2, 1, 0]
ind = [6, 1, 7]

p sort_disjoint_sublit(val,ind)
