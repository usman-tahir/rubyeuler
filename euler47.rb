require 'prime'
starttime = Time.now

def find_factors(num)
  factors = num.prime_division
  return factors.count
end

tofind = 4
(2..1_000_000).each do |n| # checked 2..10000 & 2..100_000 first without success
  if find_factors(n) == tofind && find_factors(n+1) == tofind && find_factors(n+2) == tofind && find_factors(n+3) == tofind
    puts n.to_s + ", " + (n+1).to_s + ", " + (n+2).to_s + ", " + (n+3).to_s + "!"
    break
  else
  end  
end      

puts ((Time.now - starttime).to_f).to_s + " s"