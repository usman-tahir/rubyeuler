# http://codegolf.stackexchange.com/questions/2303/how-to-determine-if-a-number-is-odd-or-even-without-mod-or-bitwise-operations

def e_o?(n)
  n == 1 ? "odd" : n == 0 ? "even" : e_o?(n-2)
end

(1..25).each do |n|
  puts "#{n}: #{e_o?(n)}"
end
