# http://rosettacode.org/wiki/Tree_traversal
#
# (relationships from data structures & algorithm analysis in c++ book)
#
# parent (r) == (r-1)/2 if r != 0
# left_child (r) == 2r + 1 if 2r+1 < n
# right_child (r) == 2r + 2 if 2r+2 < n
# left_sibling (r) == r - 1 if r.even?
# right_sibling (r) == r + 1 if r.odd? && r < n

tree = Array.new

def tree.insert_element(element,index)
  self[index] = element	
end

def tree.preorder_traversal
end

def tree.inorder_traversal
end

def tree.postorder_traversal
end

def tree.level_order
end	

base_index = 0
tree.insert(base_index,1)
tree.insert(((2*base_index)+1),2)
tree.insert(((2*base_index)+2),3)
tree.insert(((2*((2*base_index)+1))+1),4)
tree.insert(((2*((2*base_index)+1))+2),5)
tree.insert(((2*((2*base_index)+2))+1),6)
tree.insert((2*((2*((2*base_index)+1))+1)+1),7)
tree.insert((2*((2*((2*base_index)+2))+1)+1),8)
tree.insert((2*((2*((2*base_index)+2))+1)+2),9)

puts tree.inspect