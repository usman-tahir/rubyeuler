def fizzbuzz
  (1..100).each {|n| puts n % 15 == 0 ? "fizzbuzz" : n % 5 == 0 ? "buzz" : n % 3 == 0 ? "fizz" : "#{n}" }
end

fizzbuzz
