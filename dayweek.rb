# http://rosettacode.org/wiki/Day_of_the_week
# In what years between 2008 and 2121 will the 25th of December be a Sunday?
start_time = Time.now

def find_christmas_sundays(first, last)
  christmas_sundays = []
  (first..last).each do |year|
    christmas = Time.new(year, 12, 25)
    christmas_sundays << christmas if christmas.sunday?
  end
  puts christmas_sundays
end

find_christmas_sundays(2008, 2121)
puts ((Time.now - start_time).to_f).to_s + "s"
