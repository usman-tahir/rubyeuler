# http://programmingpraxis.com/2009/03/13/friday-the-thirteenth/
# find Friday the 13ths from 2009-01-13 to 2019-01-13
require 'date'

def find_friday_the_thirteenths(start_date,end_date)
  start = Date.parse(start_date)
  finish = Date.parse(end_date)
  friday_the_thirteenths =[]
  if start.day > 13
    start = Date.new(start.year,start.next_month.month,13)
  else
    start = Date.new(start.year,start.month,13)
  end    
  until start > finish
    friday_the_thirteenths << start if start.friday?
    start = start.next_month
  end  
  friday_the_thirteenths
end

puts find_friday_the_thirteenths("2009-03-14","2019-03-14").count
