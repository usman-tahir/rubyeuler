# eight bit adder from Charles Petzoid's code, chapter 12

# logic gates
# http://www.ee.surrey.ac.uk/Projects/CAL/digital-logic/gatesfunc/index.html

def _and(x,y)
  case 
  when x == 0 && y == 0
    0
  when x == 1 && y == 0
    0
  when x == 0 && y == 1
    0
  when x == 1 && y == 1
    1
  end
end  

def _or(x,y)
  case 
  when x == 0 && y == 0
    0
  when x == 1 && y == 0
    1
  when x == 0 && y == 1
    1
  when x == 1 && y == 1
    1
  end
end  

def _not(x)
  case
  when x == 1
    0
  when x == 0
    1
  end
end  

def _xor(x,y)
  case 
  when x == 0 && y == 0
    0
  when x == 1 && y == 0
    1
  when x == 0 && y == 1
    1
  when x == 1 && y == 1
    0
  end
end  

def _xnor(x,y)
  case 
  when x == 0 && y == 0
    1
  when x == 1 && y == 0
    0
  when x == 0 && y == 1
    0
  when x == 1 && y == 1
    1
  end
end  

def _nand(x,y)
  case 
  when x == 0 && y == 0
    1
  when x == 1 && y == 0
    1
  when x == 0 && y == 1
    1
  when x == 1 && y == 1
    0
  end
end 

def _nor(x,y)
  case 
  when x == 0 && y == 0
    1
  when x == 1 && y == 0
    0
  when x == 0 && y == 1
    0
  when x == 1 && y == 1
    0
  end
end

# adders

def half_adder(x,y)
  # http://www.circuitstoday.com/half-adder-and-full-adder
  [_xor(x,y),_and(x,y)]
end

def full_adder(x,y,carry)
  # http://www.circuitstoday.com/half-adder-and-full-adder
  first = half_adder(x,y)
  second = half_adder(first[0],carry)
  [second[0],_or(second[1],first[1])]
end  

def test_adder
  p full_adder(0,0,0) == [0,0]
  p full_adder(0,1,0) == [1,0]
  p full_adder(1,0,0) == [1,0]
  p full_adder(1,1,0) == [0,1]
  p full_adder(0,0,1) == [1,0]
  p full_adder(0,1,1) == [0,1]
  p full_adder(1,0,1) == [0,1]
  p full_adder(1,1,1) == [1,1]
end

# eight_bit_adder

def eight_bit_adder(binary1,binary2)
  binary_array1 = binary1.to_s.split(//).map {|char| char.to_i}
  binary_array2 = binary2.to_s.split(//).map {|char| char.to_i}
  two_to_zero = full_adder(binary_array1[7],binary_array2[7],0)
  two_to_one = full_adder(binary_array1[6],binary_array2[6],two_to_zero[1])
  two_to_two = full_adder(binary_array1[5],binary_array2[5],two_to_one[1])
  two_to_three = full_adder(binary_array1[4],binary_array2[4],two_to_two[1])
  two_to_four = full_adder(binary_array1[3],binary_array2[3],two_to_three[1])
  two_to_five = full_adder(binary_array1[2],binary_array2[2],two_to_four[1])
  two_to_six = full_adder(binary_array1[1],binary_array2[1],two_to_five[1])
  two_to_seven = full_adder(binary_array1[0],binary_array2[0],two_to_six[1])
  sum = [two_to_seven[0].to_s,two_to_six[0].to_s,
        two_to_five[0].to_s,two_to_four[0].to_s,
        two_to_three[0].to_s,two_to_two[0].to_s,
        two_to_one[0].to_s,two_to_zero[0].to_s].join
  carry = two_to_seven[1]
  [sum,carry]
end  

p eight_bit_adder("01101111","01111011")
