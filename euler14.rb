# http://projecteuler.net/problem=14
runtime = Time.now

sequence = Array.new
store = Array.new

for n in 2..999_999
	sequence.push n
	until n == 1
		if n % 2 == 0
			n = n / 2
		else
			n = (3 * n) + 1
		end
		sequence.push n
	end
	if sequence.count > store.count
		store = sequence
		sequence = []
		puts store
	else 
		sequence = []	
	end
end	

p store[0]

puts ((Time.now - runtime).to_f).to_s + " s"