# http://rosettacode.org/wiki/Spiral_matrix
require 'matrix'
start_time = Time.now

# change SPIRAL_SIZE value to alter the size of the spiral array
SPIRAL_SIZE = 5 
spiral_matrix = Matrix.build(SPIRAL_SIZE,SPIRAL_SIZE) {"empty"}

def spiral_matrix.update_element(row,col,element)
  self.send :[]=,row,col,element
end	

def spiral_matrix.show_element(row,col)
  self.element(row,col)
end	

row = 0
col = 0
(0..((SPIRAL_SIZE**2)-1)).each do |number|
  spiral_matrix.update_element(row,col,number) if spiral_matrix.show_element(row,col) == "empty"
  case
  when spiral_matrix.show_element(row,col+1) == "empty"
    direction = "right"
  when spiral_matrix.show_element(row,col+1) != "empty" && spiral_matrix.show_element(row+1,col) == "empty"
    direction = "down"
  when spiral_matrix.show_element(row+1,col) != "empty" && spiral_matrix.show_element(row,col-1) == "empty"
    direction = "left"
  when spiral_matrix.show_element(row,col-1) != "empty" && spiral_matrix.show_element(row-1,col) == "empty"
    direction = "up"
  when spiral_matrix.show_element(row-1,col) != "empty" && spiral_matrix.show_element(row,col+1) == "empty"
    direction = "right"  
  end
  case
  when direction == "right"
    col += 1
  when direction == "down"
    row += 1
  when direction == "left"
    col -= 1
  when direction == "up"
    row -= 1
  end      	
  #puts col.to_s + "," + row.to_s
end  	

puts spiral_matrix.inspect
puts ((Time.now-start_time).to_f).to_s + "s"