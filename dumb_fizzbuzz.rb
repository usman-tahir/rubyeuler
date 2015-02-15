# trying out chain of responsibility design pattern

def fizzbuzz(number)
  number % 15 == 0 ? "fizzbuzz" : buzz(number)
end

def buzz(number)
  number % 5 == 0 ? "buzz" : fizz(number)
end

def fizz(number)
  number % 3 == 0 ? "fizz" : int(number)
end

def int(number)
  number
end

(1..100).each do |n|
  puts fizzbuzz(n)
end