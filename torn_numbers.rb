# http://programmingpraxis.com/2014/09/16/torn-numbers/

def torn_number(n)
  square_root = Math.sqrt(n)
  return false if square_root % 1 != 0
  number_string = n.to_s
  (0..number_string.length-1).each do |index|
    if number_string[0..index].to_i + number_string[index+1..-1].to_i == square_root
      return true 
    end
  end
  false  
end

(2..1_000_000).each do |n|
  puts n if torn_number(n)
end
