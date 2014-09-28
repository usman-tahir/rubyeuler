# recursive factorial in ruby

def factorial(number)
  if number == 0
    return 1
  else
    number * (factorial(number.pred))
  end
end

puts factorial(5)  
