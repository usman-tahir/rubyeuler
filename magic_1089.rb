# http://programmingpraxis.com/2014/10/03/magic-1089/

def decreasing?(number)  
    number_string = number.to_s
    decreasing_flag = true
    (0..number_string.length-2).each do |index|
      decreasing_flag = false if number_string[index].to_i <= number_string[index+1].to_i
    end
    decreasing_flag
  end  

def reverse(number)
  number.to_s.reverse.to_i
end

def rvrs_diff(number)
  if decreasing?(number)
    ((number - reverse(number)) + (reverse(number - reverse(number))))
  else
    "not a decreasing number"
  end
end        

p rvrs_diff(532)
p rvrs_diff(235)
p rvrs_diff(854)