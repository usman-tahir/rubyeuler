# http://projecteuler.net/problem=19
runtime = Time.now

def sundays
	sundays = Array.new
	t = Time.gm(1901,"jan",1)
	day = 86400
	until t.strftime("%D") == "12/31/00"
		if t.sunday? == true
			sundays.push t.strftime("%d")
		else
		end
		t = t + day
	end
	puts sundays.count("01").to_s + " Sundays fell on the first of the Month from 1/1/1901 to 12/31/00."
end

sundays			

puts ((Time.now - runtime).to_f).to_s