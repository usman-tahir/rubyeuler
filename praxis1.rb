# http://programmingpraxis.com/2014/02/18/two-interview-questions/
# question 1
runtime = Time.now

store = Array.new

# finds smallest three digit number
def productize(num)
	for a in 100..999
	store = a.to_s.split('').map(&:to_i)
		if store.inject(:*) == num
			puts a
			break
		end
	end
end			

print "Please enter a number to test: "
input = gets.chomp.to_i

productize(input)
puts ((Time.now - runtime).to_f).to_s + " s"