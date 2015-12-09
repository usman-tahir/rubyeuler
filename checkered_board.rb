#!/usr/bin/env ruby
# http://www.codewars.com/kata/checkered-board

def checkered_board(size)
  white_square, black_square = "■", "□"
  (0...size).each do |c|
    (0...size).each do |r|
      if r % 2 == 0
        print c % 2 == 0 ? white_square : black_square
        print " "
      else
        print c % 2 == 0 ? black_square : white_square
        print " "
      end
    end
    puts
  end
end

checkered_board(5)
