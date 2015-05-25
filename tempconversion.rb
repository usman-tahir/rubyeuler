#!/usr/bin/env ruby
# http://rosettacode.org/wiki/Temperature_conversion

def kelvin_to_c(temp)
  (temp - 273.15).round(2)
end

def kelvin_to_f(temp)
  ((kelvin_to_c(temp) * 1.800) + 32.00).round(2)
end

def kelvin_to_rankine(temp)
  ((kelvin_to_f(temp) - 32) + 491.67).round(2)
end

temperature = 21.0
p "kelvin: #{temperature}"
p "celsius: #{kelvin_to_c(temperature)}"
p "fahrenheit: #{kelvin_to_f(temperature)}"
p "rankine: #{kelvin_to_rankine(temperature)}"
