# a graph using a matrix
#
# 1 ----- 5
# |\      |
# | \     |
# |  \    |
# 2   3   4
#
# 0 if no edge
# 1 if there is an edge
#
# points to set
# points_array = ["(1,5)","(1,2)","(1,3)","(2,1)","(3,1)","(4,5)","(5,1)","(5,4)"]
require 'matrix'
graph_matrix = Matrix.build(5,5) {0}

# sets an edge between point_one and point_two
def graph_matrix.set_edge(point_one,point_two)
  self.send :[]=,point_one-1,point_two-1,1
end

def graph_matrix.connected?(point_one,point_two)
  return true if self.element(point_one-1,point_two-1) == 1
  return true if self.element(point_two-1,point_one-1) == 1
  return false if self.element(point_one-1,point_two-1) != 1 && self.element(point_two-1,point_one-1) != 1
end  	

graph_matrix.set_edge(1,2)
graph_matrix.set_edge(1,5)
graph_matrix.set_edge(1,3)
graph_matrix.set_edge(2,1)
graph_matrix.set_edge(4,5)
graph_matrix.set_edge(5,1)
graph_matrix.set_edge(5,4)

#points_array.each do |vertex_string|
#	vertex = eval vertex_string
#	graph_matrix.set_edge(vertex)
#end	

puts "1 is connected to 2: " + graph_matrix.connected?(1,2).to_s
puts "1 is connected to 3: " + graph_matrix.connected?(1,3).to_s
puts "1 is connected to 5: " + graph_matrix.connected?(1,5).to_s
puts "2 is connected to 1: " + graph_matrix.connected?(2,1).to_s
puts "3 is connected to 1: " + graph_matrix.connected?(3,1).to_s
puts "4 is connected to 5: " + graph_matrix.connected?(4,5).to_s
puts "5 is connected to 4: " + graph_matrix.connected?(5,4).to_s
puts " ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ "
puts "2 is connected to 3: " + graph_matrix.connected?(2,3).to_s
puts "3 is connected to 2: " + graph_matrix.connected?(3,2).to_s
puts "2 is connected to 5: " + graph_matrix.connected?(2,5).to_s
puts "1 is connected to 4: " + graph_matrix.connected?(1,4).to_s
puts "3 is connected to 4: " + graph_matrix.connected?(3,4).to_s



