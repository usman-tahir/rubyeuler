# http://programmingpraxis.com/2012/01/31/string-rotation/

def rotations?(string_one,string_two)
  array_one = string_one.split(//).to_a
  array_two = string_two.split(//).to_a
  return true if array_one == array_two
  return false if array_one.sort != array_two.sort
  return false if array_one.count != array_two.count
  counter = 1
  until counter == array_one.count
    array_two.rotate!
    return true if array_one == array_two
    counter += 1
  end
  false
end

p rotations?("ProgrammingPraxis","PraxisProgramming")
