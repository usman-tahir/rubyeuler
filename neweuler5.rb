# http://projecteuler.net/problem=5

def even_div(n)
  (11..20).each {|d| return false if n % d != 0}; true
end

step_value = 9699690; smallest_n = 9699690
(smallest_n += step_value) until even_div(smallest_n)
p smallest_n
