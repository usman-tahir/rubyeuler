# http://rosettacode.org/wiki/Hofstadter_Q_sequence

def hof_q_seq(nth)
  case
  when nth == 1
    1
  when nth == 2
    1
  when nth > 2
    hof_q_seq(nth - hof_q_seq(nth - 1)) + hof_q_seq(nth - hof_q_seq(nth - 2))
  end
end

(1..10).each do |number|
  puts "#{number}: #{hof_q_seq(number)}"
end

puts "1000: #{hof_q_seq(1000)}"
