# http://mathworld.wolfram.com/HofstadterG-Sequence.html

def hof_g(nth)
  case
  when nth == 0
    0
  else
    (nth - hof_g(hof_g(nth - 1)))
  end
end

(1..15).each do |number|
  puts "#{number}: #{hof_g(number)}"
end
      