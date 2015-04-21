#!/usr/bin/env ruby
#http://programmingpraxis.com/2015/04/21/ordered-cartesian-coordinates/

def generate_cartesian_coordinates(n)
  points =[]
  (1..n).each { |x| (1..n).each { |y| points << [x,y] } }
  points.sort_by { |point| point[0] * point[1] }
end

p generate_cartesian_coordinates(3)
