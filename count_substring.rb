# http://rosettacode.org/wiki/Count_occurrences_of_a_substring

def count_substring(string,substring)
  index = 0
  counter = 0
  until index >= string.length
    if string.slice(index,substring.length) == substring
      counter += 1
      index += substring.length    
    end
    index += 1
  end
  counter
end

p count_substring("the three truths","th")

p count_substring("ababababab","abab")
