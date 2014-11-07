# http://rosettacode.org/wiki/Factorial

def factorial(number)
  if number <= 1
   1
  else
    number * factorial(number-1)
  end
end

p factorial(5)        