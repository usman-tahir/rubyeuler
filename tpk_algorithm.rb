# http://rosettacode.org/wiki/Trabb_Pardo%E2%80%93Knuth_algorithm

def func(x)
  (x.abs ** 0.5) + (5 * (x ** 3))
end

def tpk_algo(user_array)
  user_array.reverse!
  user_array.each do |item|
    value = func(item)
    puts "#{item} : Overflow!" if value > 400
    puts "#{item} : #{value}" if value <= 400
  end
end  

#tpk_algo([argv])

puts "enter 11 numbers, separated by a space: "
numbers = gets.split(/ /).map {|digits| digits.to_i}

tpk_algo(numbers)
