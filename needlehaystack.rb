# http://rosettacode.org/wiki/Search_a_list

def find_needle(array,item,i=0)
  i == array.count ? "nil" : array[i] == item ? i : find_needle(array,item,i+1)
end

haystack = ["Zig", "Zag", "Wally", "Ronald", "Bush", "Krusty", "Charlie", "Bush", "Boz", "Zag"]
needle = "Zog"

puts "#{needle} at index: #{find_needle(haystack, needle)}"
