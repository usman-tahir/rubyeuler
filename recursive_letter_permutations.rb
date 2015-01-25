# find permutations of a string recursively

# if you're past the last position, return string
# else: for each letter in string
# if letter marked as used, skip to next
# else place letter in the current position
# mark the letter as used
# permute the remaining letters starting at current position + 1
# mark the letter as unused

def permute_string(string)
  if string.length < 2
    [string]
  else
    char = string[0]
    permute_string(string[1..-1]).each_with_object([]) do |perm,result|
      (0..perm.length).each do |i|
        result << perm.dup.insert(i,char)
      end
    end
  end
end

p permute_string("abcd")
