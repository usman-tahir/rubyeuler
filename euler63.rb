starttime = Time.now

npowerints =[]
(1..100).each do |power|
	(1..9).each do |base|
		npowerints.push (base**power) if (base**power).to_s.length == power
	end
end		

puts npowerints.count
puts ((Time.now - starttime).to_f).to_s + "s"