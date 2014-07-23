# http://rosettacode.org/wiki/Last_Friday_of_each_month
start_time = Time.now

def find_last_friday(year)
  fridays = []
  time_counter = Time.new(year)
  until time_counter == Time.new(year+1)
    fridays << time_counter if time_counter.friday? == true
    time_counter += (60 * 60 * 24)
  end
  last_fridays =[]
  fridays.each_index do |index|
    break if fridays[index+1] == nil
    if fridays[index+1].month > fridays[index].month
      last_fridays << fridays[index].asctime
    end
  end
  last_fridays << fridays[-1].asctime # last Fri of the year
  last_fridays
end

puts find_last_friday(2012)
puts ((Time.now - start_time).to_f).to_s + "s"
