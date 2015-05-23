#!/usr/bin/env ruby
# http://programmingpraxis.com/2013/09/24/finding-digit-strings-in-powers-of-two/

def search_for_string(string)
  string = string.to_s
  (1..10_000).each {|e| return e if (2**e).to_s.include?(string) }
  return nil
end

p search_for_string(42)
