# logic gates for a 4 bit adder
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

def test(x,y)
  puts " *** "
  puts "#{x} and #{y}: #{_and(x,y)}"
  puts "#{x} or #{y}: #{_or(x,y)}"
  puts "#{x} nand #{y}: #{_nand(x,y)}"
  puts "#{x} nor #{y}: #{_nor(x,y)}"
  puts "#{x} xor #{y}: #{_xor(x,y)}"
  puts "#{x} xnor #{y}: #{_xnor(x,y)}"
  puts "not #{x}: #{_not(x)}"
  puts "not #{y}: #{_not(y)}"
end

test(0,0)
test(0,1)
test(1,0)
test(1,1)