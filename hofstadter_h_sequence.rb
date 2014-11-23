# http://en.wikipedia.org/wiki/Hofstadter_sequence#Hofstadter_H_sequence

def hofstadter(nth)
  case
  when nth == 0
    0
  when nth > 0
    nth - hofstadter(hofstadter(hofstadter(nth-1)))
  end
end

(1..20).each do |number|
  puts "#{number}: #{hofstadter(number)}"
end      