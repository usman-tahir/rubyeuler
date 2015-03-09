# http://codekata.com/kata/kata02-karate-chop/

def b_one(array,element,low,high)
  return nil if high < low
  m = (low + high) / 2
  return m if array[m] == element
  return b_one(array,element,low,m-1) if array[m] > element
  return b_one(array,element,m+1,high) if array[m] < element
end
# errors encountered with first: stack level too deep without using low/high arguments

def b_two(array,element)
  mid = array.count/2
  while array[mid] != element
    mid -= 1 if array[mid] > element
    mid += 1 if array[mid] < element
    return nil if array[mid+1] > element && array[mid] < element
    return nil if array[mid] > element && array[mid-1] < element
  end
  mid
end
#slower, duplicates code in the checks for mid > element &&c
#also, doesn't divide and conquer after the first step

def b_three(array,element)
  low = 0; high = array.count; mid = high/2
  until array[mid] == element
    if element < array[mid] then high = mid; mid = (low + mid)/2 end
    if element > array[mid] then low = mid; mid = (mid + high)/2 end
    return nil if array[mid+1] > element && array[mid] < element
    return nil if array[mid] > element && array[mid-1] < element
  end
  mid
end
#still iterative; does repeatedly split list in half
#slightly more verbose, but probably clearer to read

def b_four(a,e,l,h)
  bs = -> a,e,l,h {return b_four(a,e,l,h)}
  m = h < l ? nil : (l + h) / 2
  return m if m == nil  
  a[m] == e ? m : a[m] > e ? bs[a,e,l,m-1] : bs[a,e,m+1,h]
end
# like how succinct the proc is, but it's kinda hard to read
# same basic logic as b_one

def b_five(array,elem,low,high)
  selector = rand(1..5)
  print "called #{selector}: "
  case
  when selector == 1
    b_one(array,elem,low,high)
  when selector == 2
    b_two(array,elem)
  when selector == 3
    b_three(array,elem)
  when selector == 4
    b_four(array,elem,low,high)
  when selector == 5
    b_five(array,elem,low,high)
  else
  end
end
# this is dumb, but I like it shows the call stack if it recurses

test = [0,1,4,5,6,7,8,9,12,26,45,67,78,90,98,123,211,234,456,769,865,2345,3215,14345,24324]

p b_one(test,98,0,test.count)
p b_two(test,98)
p b_three(test,98)
p b_four(test,98,0,test.count)
p b_five(test,98,0,test.count)
