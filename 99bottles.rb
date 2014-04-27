# http://rosettacode.org/wiki/99_Bottles_of_Beer

def bottles_of_beer(num)
  if num > 1
    puts num.to_s + " bottles of beer on the wall"
    puts num.to_s + " bottles of beer"
    puts "Take one down, pass it around"
    puts (num-1).to_s + " bottles of beer on the wall"
  elsif num == 1	
    puts num.to_s + " bottle of beer on the wall"
    puts num.to_s + " bottle of beer"
    puts "Take it down, pass it around"
    puts "0 bottles of beer on the wall"
  end
end

x = 100
until x == 0
  bottles_of_beer(x)
  x -= 1
end  
