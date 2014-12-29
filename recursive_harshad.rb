# http://rosettacode.org/wiki/Harshad_or_Niven_series

def harshad?(number)
  number % sum(split(number)) == 0
end

def split(number,array=[])
  if number < 10
    array << number
  else
    split(number/10,(array << number % 10))
  end
end

def sum(array,index=0)
  if index == array.length
    0
  else
    array[index] + sum(array,index+1)
  end
end

def find_twenty(counter=1,array=[])
  array << counter if harshad?(counter)
  if array.length == 20
    return array
  else
    find_twenty(counter+1,array)
  end
end

def find_over_thousand
  counter = 1001
  until harshad?(counter)
    counter += 1
  end
  counter
end

p find_twenty
p find_over_thousand