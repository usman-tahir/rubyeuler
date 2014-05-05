# http://projecteuler.net/problem=92
starttime = Time.now

def square_digit_chain(number)
	chainnumber = number
	while chainnumber != 1 && chainnumber != 89
		testarray =[]
		chainnumber.to_s.split('').map(&:to_i).each do |digit|
			testarray.push (digit ** 2)
		end
		chainnumber = testarray.inject(:+)
	  return 1 if chainnumber == 1
	  return 89 if chainnumber == 89
	end   			
end

eightynines =[]
(1..10_000_000).each do |number|
	puts number
	eightynines.push number if square_digit_chain(number) == 89
end

puts eightynines.count	
puts ((Time.now - starttime).to_f).to_s + "s"