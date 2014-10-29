# http://rosettacode.org/wiki/Sorting_algorithms/Sleep_sort
require 'thread'

def sleep_sort(array_of_numbers)
  mutex = Mutex.new
  sorted_array = []
  threads = array_of_numbers.map do |number|
    Thread.new do
      sleep number/100.to_f
      mutex.synchronize do
        sorted_array << number
      end
    end
  end
  threads.each(&:join)
  sorted_array
end  

test_array = ARGV.map {|arg| arg.to_i}
puts sleep_sort(test_array).inspect