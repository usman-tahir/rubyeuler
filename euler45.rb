# http://projecteuler.net/problem=45
runtime = Time.now

value = 286
@test_ = false

def generate_triangle_number(val)
	@number = (val * (val + 1) )/ 2
end

def tri_pen_hex(num)
	if tri(num) % 1 == 0 && pen(num) % 1 == 0 && hex(num) % 1 == 0
		@test_ = true
		puts num.to_s + " is triangular, pentagonal, and hexagonal"
	else
		# puts "nope"
	end
end		

def tri(num)
	(0.5 * Math.sqrt(8 * num + 1) - 0.5)
end

def pen(num)
 	(((Math.sqrt((24 * num) + 1) + 1)) / 6)
end

def hex(num)
	((Math.sqrt((8 * num) + 1) + 1 )/ 4)
end	

until @test_ == true
	generate_triangle_number(value)
	tri_pen_hex(@number)
	value = value + 1
end	

puts ((Time.now - runtime).to_f).to_s + " s"