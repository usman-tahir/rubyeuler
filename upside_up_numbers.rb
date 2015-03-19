# http://programmingpraxis.com/2011/05/27/upside-up/

DIGITS = { 0 => 0, 1 => 1, 6 => 9, 8 => 8, 9 => 6 }

def upside_up(n)
  (0...n.to_s.length).each { |i| return false unless DIGITS[n.to_s[i].to_i] == n.to_s[-(i+1)].to_i }
end

def find_next(counter = 1962)
  upside_up(counter) ? counter : find_next(counter+1)
end

def count_below_ten_thousand
  (0...10_000).to_a.map { |n| upside_up(n) ? n : nil }.compact.count
end

p find_next
p count_below_ten_thousand
