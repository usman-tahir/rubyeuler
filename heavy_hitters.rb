#!/usr/bin/env ruby
# http://programmingpraxis.com/2015/06/02/heavy-hitters-the-britney-spears-algorithm/

def add_to_hash(hash,word)
  hash[word] ? hash[word] += 1 : hash[word] = 1
end

def show_current(hash,n=5)
  limit = n > hash.keys.count ? hash.keys.count : n
  Hash[*hash.sort_by {|k,v| v * -1}[0...limit].flatten]
end

words = {}
loop do
  print "enter the next word: "
  word = gets.chomp
  break if word == "q"
  add_to_hash(words,word)
  puts show_current(words)
end
puts show_current(words)
