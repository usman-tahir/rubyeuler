# http://rosettacode.org/wiki/Search_a_list
start_time = Time.now
haystack = ["Zig", "Zag", "Wally", "Ronald", "Bush", "Krusty", "Charlie", "Bush", "Boz", "Zag"]
# copied from ActionScript example http://rosettacode.org/wiki/Search_a_list#ActionScript
needle_to_seek = "Zag"

def find_needle(array, string)
  if array.count(string) > 1 
    array.rindex(string) # return highest index
    # array.index(string) # return lowest index
  elsif array.include?(string)
    array.index(string)
  else
    return "NOT FOUND"
  end	
end	

puts "#{needle_to_seek} is at index " + find_needle(haystack, needle_to_seek).to_s
puts ((Time.now-start_time).to_f).to_s + "s"