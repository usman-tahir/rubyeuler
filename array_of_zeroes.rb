# http://programmingpraxis.com/2014/11/21/an-array-of-zeroes/

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
