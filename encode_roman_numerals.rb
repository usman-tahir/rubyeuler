# http://rosettacode.org/wiki/Roman_numerals/Encode

def roman_numeral(number)
  roman_numeral_string = String.new
  digits_array = []
  number_string = number.to_s
  iterations = number_string.length-1
  zeros_to_add = iterations
  (0..iterations).each do |number_string_index|
    a = number_string[number_string_index]
    zeros_to_add.times do 
      a << "0"
    end
    digits_array << a
    zeros_to_add -= 1
  end
  digits_array.each do |number|
    case
    when number == "5000"
      roman_numeral_string << "MMMMM"
    when number == "4000"
      roman_numeral_string << "MMMM"
    when number == "3000"
      roman_numeral_string << "MMM"    
    when number == "2000"
      roman_numeral_string << "MM"
    when number == "1000"
      roman_numeral_string << "M"
    when number == "900"
      roman_numeral_string << "CM"
    when number == "800"
      roman_numeral_string << "DCCC"
    when number == "700"
      roman_numeral_string << "DCC"
    when number == "600"
      roman_numeral_string << "DC"
    when number == "500"
      roman_numeral_string << "D"
    when number == "400"
      roman_numeral_string << "CD"
    when number == "300"
      roman_numeral_string << "CCC"
    when number == "200"
      roman_numeral_string << "CC"
    when number == "100"
      roman_numeral_string << "C"
    when number == "90"
      roman_numeral_string << "XC"
    when number == "80"
      roman_numeral_string << "LXXX"
    when number == "70"
      roman_numeral_string << "LXX"
    when number == "60"
      roman_numeral_string << "LX"
    when number == "50"
      roman_numeral_string << "L"
    when number == "40"
      roman_numeral_string << "XL"
    when number == "30"
      roman_numeral_string << "XXX"
    when number == "20"
      roman_numeral_string << "XX"
    when number == "10"
      roman_numeral_string << "X"
    when number == "9" 
      roman_numeral_string << "IX"
    when number == "8"
      roman_numeral_string << "VIII"
    when number == "7"
      roman_numeral_string << "VII"
    when number == "6"
      roman_numeral_string << "VI"
    when number == "5"
      roman_numeral_string << "V"
    when number == "4"
      roman_numeral_string << "IV"
    when number == "3"
      roman_numeral_string << "III"
    when number == "2"
      roman_numeral_string << "II"
    when number == "1"
      roman_numeral_string << "I"
    when number == "0"
      next
    end
  end              
  roman_numeral_string
end  

p "1990 -> #{roman_numeral(1990)}"
p "2008 -> #{roman_numeral(2008)}"
p "1666 -> #{roman_numeral(1666)}"