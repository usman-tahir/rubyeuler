# http://rosettacode.org/wiki/Sum_of_squares

def sum_of_squares(*args)
  return 0 if args.count == 0
  args.map {|arg| arg ** 2}.inject(:+)
end

p sum_of_squares(0)
p sum_of_squares(1,2,3) 
p sum_of_squares(3.0, 1.0, 4.0, 1.0, 5.0, 9.0) 