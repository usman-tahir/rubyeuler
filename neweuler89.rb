# http://projecteuler.net/problem=89

roman_numerals = File.readlines("p089_roman.txt")
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

puts original_file_character_count - minimal_form_character_count  