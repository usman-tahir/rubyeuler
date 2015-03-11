# http://programmingpraxis.com/2010/11/02/emirps/
require 'prime'

counter = 0
Prime.each(1000) do |prime_number|
  temp = prime_number
  reversed = 0
  while temp > 0
    reversed = 10 * reversed + temp % 10
    temp /= 10
  end
  next if reversed == prime_number
  counter += 1 if reversed.prime?
end

p counter
