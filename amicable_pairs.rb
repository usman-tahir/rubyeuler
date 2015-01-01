# http://rosettacode.org/wiki/Amicable_pairs

def divisors(number)
  divisors = []
  (1...number).each do |div|
    divisors << div if number % div == 0
  end
  divisors
end

def sum(array,index=0)
  if index == array.length
    0
  else
    array[index] + sum(array,index+1)
  end
end

def find_amicable_pairs(limit)
  pairs = []
  amicables = {}
  (1...limit).each do |number|
    amicables[number] = sum(divisors(number))
  end
  amicables.each do |key,val|
    if amicables[val] == key && val != key
      pairs << [key,val].sort
    end
  end
  pairs.uniq
end

p find_amicable_pairs(20_000)
