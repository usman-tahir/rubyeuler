# http://programmingpraxis.com/
# given an array, determine if it is a palindrome

def palindrome?(array)
  left_i = 0; right_i = -1
  array[left_i] != array[right_i] ? (return false) : (left_i += 1; right_i -= 1) until array[left_i].equal?(array[right_i])
  true
end

palin = [1,2,3,4,3,2,1]
not_palin = [1,2,3,4,5,1,2,3,4,5]

p palindrome?(palin)
p palindrome?(not_palin)
