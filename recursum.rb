# recursively sums an array

def recursum(array,index=0)
   index == array.count ? 0 : array[index] + recursum(array,index+1)
end

test_array = [1,2,3,4,5]
p recursum(test_array)	
