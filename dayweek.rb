# http://rosettacode.org/wiki/Day_of_the_week
# In what years between 2008 and 2121 will the 25th of December be a Sunday?

day = -> n { Time.new(n,12,25) }
(2008..2121).each {|y| puts day[y].strftime("%m/%d/%Y") if day[y].sunday? }
