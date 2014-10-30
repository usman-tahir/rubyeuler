# http://rosettacode.org/wiki/Leap_year

def leap_year?(year)
  case
  when year % 400 == 0
    return true
  when year % 4 == 0 && year % 400 ==0
    return true
  else
    return false
  end      
end  

years_to_test = [1700,1800,1900,2100,2200,1600,2000,2400,1994,1996,1997,1998,1999]

years_to_test.each do |year|
  puts "#{year} is a leap year? #{leap_year?(year)}"
end  