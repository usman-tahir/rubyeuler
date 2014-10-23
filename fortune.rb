# http://programmingpraxis.com/2011/04/05/fortune/
# http://minnie.tuhs.org/cgi-bin/utree.pl?file=V7/usr/games/lib/fortunes

fortunes =[]
File.open('fortunes.txt').each_line { |line| fortunes << line }
puts fortunes.sample.to_s

