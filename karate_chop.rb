# http://codekata.com/kata/kata02-karate-chop/

def b_one(array,element,low,high)
  m = (low + high) / 2
  if array[m] == element
    m
  elsif array[m] > element
    b_one(array,element,low,m-1)
  else array[m] < element
    b_one(array,element,m+1,high)
  end
end
# errors encountered with first: stack level too deep without using low/high arguments

test = [0,1,4,5,6,7,8,9,12,26,45,67,78,90,98,123,211,234,456,769,865,2345,3215,14345,24324]

p b_one(test,98, 0, test.count)
