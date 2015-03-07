# http://rosettacode.org/wiki/Day_of_the_week
# In what years between 2008 and 2121 will the 25th of December be a Sunday?

(2008..2121).each {|y| xmas = Time.new(y, 12, 25); puts xmas.strftime("%m/%d/%Y") if xmas.sunday? }
