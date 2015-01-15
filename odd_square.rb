# http://programmingpraxis.com/2013/02/26/an-odd-way-to-square/

def square(n)
  number = n
  (number-1).times do 
    n += number
  end
  n
end

p square(4)
p square(3)
p square(9)
