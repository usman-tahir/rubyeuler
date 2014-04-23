# http://projecteuler.net/problem=49
require 'prime'
runtime = Time.now
values = Array.new

def discard_numbers(number)
  test = number.to_s.scan(/./).map {|e| e.to_i}
  ztf = [0,2,4] # discard a number if its digits include all three of these
  zts = [0,2,6] # ...
  zte = [0,2,8] # ..
  zfe = [0,4,8] # .
  zfs = [0,4,6] #
  zfe = [0,4,8] #
  zse = [0,6,8] #
  tfs = [2,4,6] #
  tfe = [2,4,8] #
  tse = [2,6,8] #
  fse = [4,6,8] #
  vzt = [5,0,2] #
  vft = [5,4,2] #
  vtt = [5,2,2] #
  vts = [5,2,6] #
  vte = [5,2,8] #
  vzf = [5,0,4] #
  vzs = [5,0,6] #
  vze = [5,0,8] #
  vfe = [5,4,8] #
  vse = [5,6,8] #
  vss = [5,6,6] #
  vee = [5,8.8] #
  vsf = [5,6,4] #
  if (test - ztf).count < 2
    return true
  elsif (test - zts).count < 2
    return true
  elsif (test - zte).count < 2
    return true
  elsif (test - zfe).count < 2
    return true
  elsif (test - zse).count < 2
    return true
  elsif (test - zfs).count < 2
    return true
  elsif (test - zfe).count < 2
    return true
  elsif (test - tfs).count < 2
    return true
  elsif (test - tfe).count < 2
    return true
  elsif (test - tse).count < 2
    return true
  elsif (test - fse).count < 2
    return true
  elsif (test - vzt).count < 2
    return true
  elsif (test - vft).count < 2
    return true
  elsif (test - vtt).count < 2
    return true
  elsif (test - vts).count < 2
    return true
  elsif (test - vte).count < 2
    return true
  elsif (test - vsf).count < 2
    return true
  elsif (test - vzf).count < 2
    return true
  elsif (test - vzs).count < 2
    return true
  elsif (test - vze).count < 2
    return true
  elsif (test - vfe).count < 2
    return true
  elsif (test - vse).count < 2
    return true
  elsif (test - vss).count < 2
    return true
  elsif (test - vee).count < 2
    return true	
  else
    return false # false: number still a candidate
  end
end

Prime.each(9999) do |n|
  values.push n if n > 1000
end

candidates = []
  values.each do |n|
  next if discard_numbers(n) == true
  candidates.push n if discard_numbers(n) == false
end

candidates.each do |num|
  x = num
  y = (num + 3330)
  z = (num + 6660)
  if x.prime? == true && y.prime? == true && z.prime? == true && z < 10000 && x.to_s.scan(/./).map {|e| e.to_i}.sort == y.to_s.scan(/./).map {|e| e.to_i}.sort
    puts num.to_s + " " + (num + 3330).to_s + " " + (num + 6660).to_s
  else
  end	
end	

puts ((Time.now - runtime).to_f).to_s + " s"
