# http://rosettacode.org/wiki/Ackermann_function

def ackerman(m,n)
  case
  when m == 0
    n + 1
  when m > 0 && n == 0
    ackerman(m-1,1)
  when m > 0 && n > 0
    ackerman(m-1,(ackerman(m,n-1)))
  end
end

(0..4).each do |m|
  (0..4).each do |n|
    puts "#{m}, #{n}: #{ackerman(m,n)}"
  end
end    
    