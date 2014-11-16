# http://rosettacode.org/wiki/Fibonacci_n-step_number_sequences

#(define (fib-rec n)
#  (if (< n 2)
#      n
#      (+ (fib-rec (- n 1))
#         (fib-rec (- n 2)))))

def fibonacci(n,series)
  case
  when series == "fibo"
    if n < 2
      n
    else
      fibonacci(n-1,"fibo") + fibonacci(n-2,"fibo")
    end
  when series == "tribo"
    if n == 1
      1
    elsif n == 2
      1
    elsif n == 3
      2
    else    
      fibonacci(n-1,"tribo") + fibonacci(n-2,"tribo") + fibonacci(n-3,"tribo")
    end
  when series == "tetra"
    if n == 1
      1
    elsif n == 2
      1
    elsif n == 3
      2
    elsif n == 4
      4        
    else
      fibonacci(n-1,"tetra") + fibonacci(n-2,"tetra") + fibonacci(n-3,"tetra") + fibonacci(n-4,"tetra")
    end
  when series == "lucas"
    if n == 1
      2
    elsif n == 2
      1
    else
      fibonacci(n-1,"lucas") + fibonacci(n-2,"lucas")
    end      
  end          
end

print "fibonacci numbers: "
(1..10).each do |number|
  print "#{fibonacci(number,"fibo")} "
end; puts

print "tribonacci numbers: "
(1..10).each do |number|
  print "#{fibonacci(number,"tribo")} "
end; puts

print "tetranacci numbers: "
(1..10).each do |number|
  print "#{fibonacci(number,"tetra")} "
end; puts    

print "Lucas series: "
(1..10).each do |number|
  print "#{fibonacci(number,"lucas")} "
end; puts  
