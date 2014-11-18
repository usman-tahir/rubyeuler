# http://rosettacode.org/wiki/Towers_of_Hanoi

def move(n,from,to,via)
  if n > 0
    move(n-1,from,via,to)
    puts "Move from #{from} to #{to}"
    move(n-1,via,to,from)
  end  
end

move(4,1,2,3)    
