# http://projecteuler.net/problem=19
require 'date'

def count_sundays(start_date)
  date_counter = start_date
  array_of_sundays =[]
  until date_counter.to_s > "2000-12-31"
    array_of_sundays << date_counter if date_counter.sunday? && date_counter.day == 1
    date_counter += 1
  end
  array_of_sundays.count
end    

puts count_sundays(Date.new(1901,01,01))
