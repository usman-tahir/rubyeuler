# https://projecteuler.net/problem=104

def pandigital(n)
  split(n).sort == (1..9).to_a
end

def split(n,array=[])
  n < 10 ? array << n : split(n/10,(array << n % 10))
end

def pandigital_fibo
  fibo = [1,1]
  found_flag = false
  counter = 2
  until found_flag == true
    fibo.push(fibo[-1] + fibo[-2]); fibo.shift; counter += 1
    found_flag = true if pandigital(fibo[-1].to_s.split(//).last(9).join.to_i) && pandigital(fibo[-1].to_s.split(//).first(9).join.to_i)
  end
  counter
end

p pandigital_fibo
