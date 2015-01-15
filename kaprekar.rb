# http://programmingpraxis.com/2010/09/21/kaprekar-numbers/

def kaprekar(k)
  (k**2).to_s[-k.to_s.length, k.to_s.length].to_i + (k**2).to_s[0, (k**2).to_s.length-(k**2).to_s[-k.to_s.length, k.to_s.length].length].to_i == k
end

(1..1000).each do |n|
  p n if kaprekar(n)
end
