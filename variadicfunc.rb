# http://rosettacode.org/wiki/Variadic_function

suff = { "1" => "st", "2" => "nd", "3" => "rd" }
func = -> *n { n.map { |e| e.to_s }.each { |n| n[-2] == "1" || !suff.include?(n[-1]) ? n << "th" : n << suff[n[-1]] } }
puts func[1,11,21,34,114,200_112,1_000_023]
