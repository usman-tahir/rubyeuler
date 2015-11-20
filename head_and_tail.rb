#!/usr/bin/env ruby
# http://programmingpraxis.com/2015/11/13/head-and-tail/

def put_head_and_tail(file)
  f = File.open(file).readlines
  puts "first line is \"#{f.first}last line is \"#{f.last}"
end

put_head_and_tail($PROGRAM_NAME)
