#!/usr/bin/env ruby
# http://programmingpraxis.com/2015/06/26/find-the-missing-number/

def find_missing_number(string)
  numbers = []; len = 1; i = 0
  len += 1 until string[0...len].to_i + 1 == string[len...len+len].to_i
  (numbers << string.slice(i,len); i += len) until i > string.length
  results = numbers.map {|e| e.to_i }[0..-2]
  (0...results.count).each {|i| return results[i] + 1 if results[i+1] - 1 != results[i]}
end

test = "596597598600601602603"
p find_missing_number(test)
