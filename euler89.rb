# http://projecteuler.net/problem=89
start_time = Time.now

roman_numerals = File.readlines("roman.txt")
original_file_character_count = 0
roman_numerals.each do |numeral|
  original_file_character_count += numeral.length
end

minimal_form_character_count = 0
minimal_form_roman_numerals = roman_numerals
minimal_form_roman_numerals.each do |numeral|
  numeral.gsub!(/VIIII/, "IX")
  numeral.gsub!(/IIII/, "IV")
  numeral.gsub!(/LXXXX/, "XC")
  numeral.gsub!(/XXXX/, "XL")
  numeral.gsub!(/DCCCC/, "CM")
  numeral.gsub!(/CCCC/, "CD")
end

minimal_form_roman_numerals.each do |numeral|
  minimal_form_character_count += numeral.length
end	

# puts roman_numerals.count.to_s == minimal_form_roman_numerals.count.to_s
puts original_file_character_count - minimal_form_character_count 
puts ((Time.now - start_time).to_f).to_s + "s"	