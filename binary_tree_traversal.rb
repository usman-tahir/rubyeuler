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
tree.insert_element(1,base_index)
tree.insert_element(2,((2*base_index)+1))
tree.insert_element(3,((2*base_index)+2))
tree.insert_element(4,((2*((2*base_index)+1))+1))
tree.insert_element(5,((2*((2*base_index)+1))+2))
tree.insert_element(6,((2*((2*base_index)+2))+1))
tree.insert_element(7,(2*((2*((2*base_index)+1))+1)+1))
tree.insert_element(8,(2*((2*((2*base_index)+2))+1)+1))
tree.insert_element(9,(2*((2*((2*base_index)+2))+1)+2))

puts tree.inspect