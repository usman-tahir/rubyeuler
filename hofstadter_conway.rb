# http://en.wikipedia.org/wiki/Hofstadter_sequence#Hofstadter.E2.80.93Conway_.2410.2C000_sequence
# http://oeis.org/A004001

def hof_conway(nth)
  case
  when nth == 1 || nth == 2
    1
  else
    hof_conway(hof_conway(nth - 1)) + hof_conway(nth - hof_conway(nth - 1))
  end
end

(1..20).each do |number|
  puts "#{number}: #{hof_conway(number)}"
end  
