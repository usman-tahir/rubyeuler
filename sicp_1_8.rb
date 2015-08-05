#!/usr/bin/env ruby
# sicp exercise 1.8

def abs(x)
  return x > 0 ? x : x < 0 ? -x : 0
end

def cube(x)
  return x * x * x
end

def good_enough?(guess,x)
  return (abs((cube(guess)-x)) < 0.001)
end

def improve(guess,x)
  return (((x/(guess * guess)) + (2 * guess)) / 3.0)
end

def cbrt_iter(guess,x)
  return good_enough?(guess,x) ? guess : cbrt_iter(improve(guess,x),x)
end

def cbrt(x)
  return cbrt_iter(1.0,x)
end
  
p cbrt(27)
p cbrt(81)
p cbrt(cube(9))