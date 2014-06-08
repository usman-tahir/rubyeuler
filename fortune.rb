# http://programmingpraxis.com/2011/04/05/fortune/
# http://minnie.tuhs.org/cgi-bin/utree.pl?file=V7/usr/games/lib/fortunes
start_time = Time.now

fortunes =[]
File.open('fortunes.txt').each_line do |line|
  fortunes << line
end

puts fortunes.sample.to_s
puts ((Time.now - start_time).to_f).to_s + "s"  