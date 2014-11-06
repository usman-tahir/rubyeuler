# http://rosettacode.org/wiki/Five_weekends
require 'date'

def friday_first_of_the_month?(year,month)
  Date.new(year,month,1).friday?
end

def month_has_31_days?(year,month)
  Date.new(year,month,-1).day == 31
end  

def five_weekend_months(start_year,end_year)
  five_wknd_mnths =[]
  (start_year..end_year).each do |year|
    (1..12).each do |month|
      if friday_first_of_the_month?(year,month) && month_has_31_days?(year,month)
        five_wknd_mnths << Date.new(year,month)
      end
    end
  end
  five_wknd_mnths      
end  

result = five_weekend_months(1900,2100)

result.each do |date|
  puts "#{date.year} #{date.month}"
end 

puts "#{result.count} total" 