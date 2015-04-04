# http://rosettacode.org/wiki/Flatten_a_list

def flatten_list(first_array,index=0,new_array=[])
  if index > first_array.count
    new_array.pop # pops nil value terminating list
    includes_array = false
    new_array.each {|n| includes_array = true if n.class == Array}   
    includes_array == false ? (return new_array) : (return flatten_list(new_array))
  else 
    if first_array[index].class == Array
      first_array[index].each do |n|
        if n.class == Array
          val = flatten_list(n)
          new_array << val unless val == nil
        else
          new_array << n
        end
      end
    else
      new_array << first_array[index]
    end
    flatten_list(first_array,index+1,new_array)
  end
end

list = [[1], 2, [[3,4], 5], [[[]]], [[[6]]], 7, 8, []]
two = [[1],2,3,4,5]

p flatten_list(list)
p flatten_list(two)
