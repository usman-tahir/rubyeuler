# http://rosettacode.org/wiki/Variadic_function

def cardinal_to_ordinal(*numbers)
  suff = { "1" => "st", "2" => "nd", "3" => "rd" }
  numbers.map { |e| e.to_s }.each { |n| n[-2] == "1" || !suff.include?(n[-1]) ? n << "th" : n << suff[n[-1]] }
end

puts cardinal_to_ordinal(1,11,21,34,114,200_112,1_000_023)
