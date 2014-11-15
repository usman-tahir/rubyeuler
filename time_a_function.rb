# http://rosettacode.org/wiki/Time_a_function
require 'benchmark'

def subtract(x,y)
  case
  when y == 0
    x
  else
    subtract(x-1,y-1)
  end
end

result = Benchmark.measure do
  (50..100).each do |x|
    (1..49).each do |y|
      subtract(x,y)
    end
  end
end

puts result

