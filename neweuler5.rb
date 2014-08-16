# http://projecteuler.net/problem=5
# reduction: must at least be divisible by
# 2,3,5,7,11,13,17,19
# smallest_multiple = 2*3*5*7*11*13*17*19
step_value = 9699690
smallest_multiple = 9699690 # first step value is the smallest candidate

# if it's evenly divisible by 20-11, then also by 10-1
def evenly_divisible_by_one_to_twenty(number)
  number % 20 == 0 &&
  number % 19 == 0 &&
  number % 18 == 0 &&
  number % 17 == 0 &&
  number % 16 == 0 &&
  number % 15 == 0 &&
  number % 14 == 0 &&
  number % 13 == 0 &&
  number % 12 == 0 &&
  number % 11 == 0
end

until evenly_divisible_by_one_to_twenty(smallest_multiple) == true
  smallest_multiple += step_value
end

puts smallest_multiple.to_s + " is evenly divisible by 1-20"
