# http://rosettacode.org/wiki/Loops/Infinite

def infinite_loop(string)
  a = []
  counter = 0
  until a[counter] != nil
    puts string
    counter += 1
  end
end

infinite_loop("spam")      