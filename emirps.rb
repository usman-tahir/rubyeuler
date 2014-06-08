# http://programmingpraxis.com/2010/11/02/emirps/
require 'prime'
start_time = Time.now
emirps =[]

# warning: slow!
Prime.each(1_000_000) do |prime_number|
  next if prime_number.to_s.reverse.to_i == prime_number
  emirps << prime_number if prime_number.to_s.reverse.to_i.prime?
end
puts emirps.count.to_s + " emirps below one million."

puts ((Time.now - start_time).to_f).to_s + "s"