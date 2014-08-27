# http://projecteuler.net/problem=17

def find_number_letter_counts_up_to(number)
  letter_count_string = String.new
  1.upto(number).each do |number|
    #puts number
    case
    when number.to_s.length < 2 || number.to_s[-2].to_i != 1
      ones_to_append = "" if number.to_s[-1].to_i == 0
      ones_to_append = "one" if number.to_s[-1].to_i == 1
      ones_to_append = "two" if number.to_s[-1].to_i == 2
      ones_to_append = "three" if number.to_s[-1].to_i == 3
      ones_to_append = "four" if number.to_s[-1].to_i == 4
      ones_to_append = "five" if number.to_s[-1].to_i == 5
      ones_to_append = "six" if number.to_s[-1].to_i == 6
      ones_to_append = "seven" if number.to_s[-1].to_i == 7
      ones_to_append = "eight" if number.to_s[-1].to_i == 8
      ones_to_append = "nine" if number.to_s[-1].to_i == 9
    when number.to_s.length > 1 && number.to_s[-2].to_i == 1
      elevens_to_append = "ten" if number.to_s[-2..-1].to_i == 10
      elevens_to_append = "eleven" if number.to_s[-2..-1].to_i == 11
      elevens_to_append = "twelve" if number.to_s[-2..-1].to_i == 12
      elevens_to_append = "thirteen" if number.to_s[-2..-1].to_i == 13
      elevens_to_append = "fourteen" if number.to_s[-2..-1].to_i == 14
      elevens_to_append = "fifteen" if number.to_s[-2..-1].to_i == 15
      elevens_to_append = "sixteen" if number.to_s[-2..-1].to_i == 16
      elevens_to_append = "seventeen" if number.to_s[-2..-1].to_i == 17
      elevens_to_append = "eighteen" if number.to_s[-2..-1].to_i == 18
      elevens_to_append = "nineteen" if number.to_s[-2..-1].to_i == 19  
    end
    case
    when number.to_s.length > 1
      tens_to_append = "" if number.to_s[-2].to_i == 0
      tens_to_append = "" if number.to_s[-2].to_i == 1
      tens_to_append = "twenty" if number.to_s[-2].to_i == 2
      tens_to_append = "thirty" if number.to_s[-2].to_i == 3
      tens_to_append = "forty" if number.to_s[-2].to_i == 4
      tens_to_append = "fifty" if number.to_s[-2].to_i == 5
      tens_to_append = "sixty" if number.to_s[-2].to_i == 6
      tens_to_append = "seventy" if number.to_s[-2].to_i == 7
      tens_to_append = "eighty" if number.to_s[-2].to_i == 8
      tens_to_append = "ninety" if number.to_s[-2].to_i == 9
    end
    case
    when number.to_s.length > 2
      hundreds_to_append = "onehundred" if number == 100
      hundreds_to_append = "onehundredand" if number > 100 && number < 200
      hundreds_to_append = "twohundred" if number == 200
      hundreds_to_append = "twohundredand" if number > 200 && number < 300
      hundreds_to_append = "threehundred" if number == 300
      hundreds_to_append = "threehundredand" if number > 300 && number < 400
      hundreds_to_append = "fourhundred" if number == 400
      hundreds_to_append = "fourhundredand" if number > 400 && number < 500
      hundreds_to_append = "fivehunderd" if number == 500
      hundreds_to_append = "fivehundredand" if number > 500 && number < 600
      hundreds_to_append = "sixhundred" if number == 600
      hundreds_to_append = "sixhundredand" if number > 600 && number < 700
      hundreds_to_append = "sevenhundred" if number == 700
      hundreds_to_append = "sevenhundredand" if number > 700 && number < 800
      hundreds_to_append = "eighthundred" if number == 800
      hundreds_to_append = "eighthundredand" if number > 800 && number < 900
      hundreds_to_append = "ninehundred" if number == 900
      hundreds_to_append = "ninehundredand" if number > 900 && number < 1000
      hundreds_to_append = "onethousand" if number == 1000
    end     
    letter_count_string << ones_to_append if number.to_s.length < 2
    letter_count_string << ones_to_append if number.to_s.length > 1 && number.to_s[-2].to_i != 1 
    letter_count_string << elevens_to_append if number.to_s.length > 1 && number.to_s[-2].to_i == 1
    letter_count_string << tens_to_append if number.to_s.length > 1
    letter_count_string << hundreds_to_append if number > 99
  end
  letter_count_string.length
end

puts find_number_letter_counts_up_to(1000)


  