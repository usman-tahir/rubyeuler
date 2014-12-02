# http://programmingpraxis.com/2012/02/24/remove-characters-from-a-string/

def remove_char(string_one,string_two)
  string_one.delete(string_two)
end  

test_string_one = "Programming Praxis"
test_string_two = "aeiou"

p remove_char(test_string_one,test_string_two)