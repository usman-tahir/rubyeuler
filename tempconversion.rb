# http://rosettacode.org/wiki/Temperature_conversion
start_time = Time.now
temperature = 21.0

def kelvin_to_c(temp)
  celsius = temp - 273.15
end

def kelvin_to_f(temp)
  fahrenheit = (kelvin_to_c(temp) * 1.800) + 32.00
end

def kelvin_to_rankine(temp)
  rankine = (kelvin_to_f(temp) - 32) + 491.67
end

puts temperature
puts kelvin_to_c(temperature).round(2)
puts kelvin_to_f(temperature).round(2)
puts kelvin_to_rankine(temperature).round(2)
puts ((Time.now-start_time).to_f).to_s + "s"

