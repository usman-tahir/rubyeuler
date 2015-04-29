#!/usr/bin/env ruby
# http://programmingpraxis.com/2015/04/28/identifying-anagrams/

def anagrams_one(string1,string2)
  str_one, str_two = Hash.new, Hash.new
  (0...string1.length).each do |i|
    if str_one[string1[i].downcase] == nil
      str_one[string1[i].downcase] = 1
    else
      str_one[string1[i].downcase] += 1
    end
  end
  (0...string2.length).each do |i|
    if str_two[string2[i].downcase] == nil
      str_two[string2[i].downcase] = 1
    else
      str_two[string2[i].downcase] += 1
    end
  end
  str_one == str_two
end

def anagrams_two(string1,string2)
  string1.downcase.split(//).sort.join == string2.downcase.split(//).sort.join
end

p anagrams_one("opts","tops")
p anagrams_two("pots","stop")
p anagrams_one("dopiest","deposit") == anagrams_two("deposit","dopiest")
