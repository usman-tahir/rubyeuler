# http://programmingpraxis.com/2014/11/21/an-array-of-zeroes/

# You are given an array of integers. Write a program that moves all non-zero 
# integers to the left end of the array, and all zeroes to the right end of 
# the array. Your program should operate in place. The order of the non-zero 
# integers doesn’t matter. As an example, given the input array 
# [1,0,2,0,0,3,4], your program should permute the array to [1,4,2,3,0,0,0] 
# or something similar, and return the value 4.

def move_zeroes(array)
  right = (array.length - 1)
  left = 0
  until right == left
    case
    when array[left] == 0 && array[right] != 0
      array[left], array[right] = array[right], array[left]
      right -= 1
      left += 1
    when array[left] == 0 && array[right] == 0
      right -= 1
    when array[left] != 0 && array[right] != 0
      left += 1
    when array[left] != 0 && array[right] == 0
      left += 1
      right -= 1
    end
  end
  array
end

test_array = [1,0,2,0,0,3,4]
p move_zeroes(test_array)
