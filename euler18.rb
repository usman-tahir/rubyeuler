# http://projecteuler.net/problem=18
runtime = Time.now

ary0 = [75] #1
ary1 = [95,64] #2
ary2 = [17,47,82] #3
ary3 = [18,35,87,10] #4
ary4 = [20,4,82,47,65] #5
ary5 = [19,1,23,75,3,34] #6
ary6 = [88,2,77,73,7,63,67] #7
ary7 = [99,65,4,28,6,16,70,92] #8
ary8 = [41,41,26,56,83,40,80,70,33] #9
ary9 = [41,48,72,33,47,32,37,16,94,29] #10
ary10 = [53,71,44,65,25,43,91,52,97,51,14] #11
ary11 = [70,11,33,28,77,73,17,78,39,68,17,57] #12
ary12 = [91,71,52,38,17,14,91,43,58,50,27,29,48] #13
ary13 = [63,66,4,68,89,53,67,30,73,16,69,87,40,31] # 14
ary14 = [4,62,98,27,23,9,70,98,73,93,38,53,60,4,23] # 15
arysolve = []

ary13.each_index do |index|
	x = ary13[index] + ary14[index]
	y = ary13[index] + ary14[index+1]
	if x > y
		arysolve.push x
	elsif y > x
	  arysolve.push y
	else x = y
	  arysolve.push x
	end
end

ary13 = arysolve
arysolve = []

ary12.each_index do |index|
	x = ary12[index] + ary13[index]
	y = ary12[index] + ary13[index+1]
	if x > y
		arysolve.push x
	elsif y > x
	  arysolve.push y
	else x = y
	  arysolve.push x
	end
end

ary12 = arysolve
arysolve = []

ary11.each_index do |index|
	x = ary11[index] + ary12[index]
	y = ary11[index] + ary12[index+1]
	if x > y
		arysolve.push x
	elsif y > x
	  arysolve.push y
	else x = y
	  arysolve.push x
	end
end

ary11 = arysolve
arysolve = []

ary10.each_index do |index|
	x = ary10[index] + ary11[index]
	y = ary10[index] + ary11[index+1]
	if x > y
		arysolve.push x
	elsif y > x
	  arysolve.push y
	else x = y
	  arysolve.push x
	end
end

ary10 = arysolve
arysolve = []

ary9.each_index do |index|
	x = ary9[index] + ary10[index]
	y = ary9[index] + ary10[index+1]
	if x > y
		arysolve.push x
	elsif y > x
	  arysolve.push y
	else x = y
	  arysolve.push x
	end
end

ary9 = arysolve
arysolve = []

ary8.each_index do |index|
	x = ary8[index] + ary9[index]
	y = ary8[index] + ary9[index+1]
	if x > y
		arysolve.push x
	elsif y > x
	  arysolve.push y
	else x = y
	  arysolve.push x
	end
end

ary8 = arysolve
arysolve = []

ary7.each_index do |index|
	x = ary7[index] + ary8[index]
	y = ary7[index] + ary8[index+1]
	if x > y
		arysolve.push x
	elsif y > x
	  arysolve.push y
	else x = y
	  arysolve.push x
	end
end

ary7 = arysolve
arysolve = []

ary6.each_index do |index|
	x = ary6[index] + ary7[index]
	y = ary6[index] + ary7[index+1]
	if x > y
		arysolve.push x
	elsif y > x
	  arysolve.push y
	else x = y
	  arysolve.push x
	end
end

ary6 = arysolve
arysolve = []

ary5.each_index do |index|
	x = ary5[index] + ary6[index]
	y = ary5[index] + ary6[index+1]
	if x > y
		arysolve.push x
	elsif y > x
	  arysolve.push y
	else x = y
	  arysolve.push x
	end
end

ary5 = arysolve
arysolve = []

ary4.each_index do |index|
	x = ary4[index] + ary5[index]
	y = ary4[index] + ary5[index+1]
	if x > y
		arysolve.push x
	elsif y > x
	  arysolve.push y
	else x = y
	  arysolve.push x
	end
end

ary4 = arysolve
arysolve = []

ary3.each_index do |index|
	x = ary3[index] + ary4[index]
	y = ary3[index] + ary4[index+1]
	if x > y
		arysolve.push x
	elsif y > x
	  arysolve.push y
	else x = y
	  arysolve.push x
	end
end

ary3 = arysolve
arysolve = []

ary2.each_index do |index|
	x = ary2[index] + ary3[index]
	y = ary2[index] + ary3[index+1]
	if x > y
		arysolve.push x
	elsif y > x
	  arysolve.push y
	else x = y
	  arysolve.push x
	end
end

ary2 = arysolve
arysolve = []

ary1.each_index do |index|
	x = ary1[index] + ary2[index]
	y = ary1[index] + ary2[index+1]
	if x > y
		arysolve.push x
	elsif y > x
	  arysolve.push y
	else x = y
	  arysolve.push x
	end
end

ary1 = arysolve
arysolve = []

ary0.each_index do |index|
	x = ary0[index] + ary1[index]
	y = ary0[index] + ary1[index+1]
	if x > y
		arysolve.push x
	elsif y > x
	  arysolve.push y
	else x = y
	  arysolve.push x
	end
end

puts arysolve	    	
puts ((Time.now - runtime).to_f).to_s + " s"

