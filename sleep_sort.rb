# http://rosettacode.org/wiki/Sorting_algorithms/Sleep_sort
require 'thread'

def sleep_sort(array,l=[])
  array.map {|n| Thread.new { sleep n/100.to_f; Mutex.new.synchronize { l << n } } }.each(&:join)
  return l
end  

p sleep_sort(ARGV.map {|arg| arg.to_i})
