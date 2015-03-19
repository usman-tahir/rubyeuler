# http://programmingpraxis.com/2013/03/29/one-million-hits/

digit = -> list,index { index == 0 ? list[index] = "1" : list[index] = "0" }
list = Array.new(7,nil)
puts list.each_index { |i| list[i] = digit[list,i] }.join.to_i
