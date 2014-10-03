# http://rosettacode.org/wiki/Set_consolidation

# The two input sets if no common item exists between the two input sets of items.
# The single set that is the union of the two input sets if they share a common item. 

one = ["a","b"]
two = ["c","d"]
three = ["b","d"]

def consolidate(set1,set2)
  if (set1 & set2).count == 0
    return [set1,set2]
  else  
    (set1 + set2).uniq.sort
  end  
end  

# example 1
p consolidate(one,two)

# example 2
p consolidate(one,three)

# example 3
p consolidate(consolidate(one,three),two)

# example 4
a = ["h","i","k"]
b = ["a","b"]
c = ["c","d"]
d = ["d","b"]
e = ["f","g","h"]

p consolidate(consolidate(b,d),c)
p consolidate(a,e)

