#!/usr/bin/env python
# http://programmingpraxis.com/2015/03/31/identifying-palindromes/

def array_is_palindrome(list):
  left_index = 0
  right_index = len(list)-1
  while right_index >= left_index:
    if list[left_index] != list[right_index]:
      return False
    else:
      left_index += 1
      right_index -= 1
  return True

even_palindrome = [1,2,3,4,4,3,2,1]
odd_palindrome = [1,2,3,4,5,4,3,2,1]
not_palindrome = [1,2,3,4,5,1,2,3,4]

print array_is_palindrome(even_palindrome)
print array_is_palindrome(odd_palindrome)
print array_is_palindrome(not_palindrome)