# http://programmingpraxis.com/2012/11/09/taxicab-numbers/

# Given an arbitrary positive integer, how would you determine if it can be expressed as a sum of two cubes?

def taxicab_number?(n)
  cube_root = Math.cbrt(n).to_i
  bases = []
  (1..cube_root).each do |x|
    (1..cube_root).each do |y|
      if (x**3) + (y**3) == n && x != y
        bases << x if !bases.include?(x)
        bases << y if !bases.include?(y)
        if !bases.include?(x) && !bases.include?(y)
          counter += 1
          bases << x; bases << y
        end
      end
      return true if bases.count >= 4
    end
  end
  false
end

(1..70_000).each do |n|
  p n if taxicab_number?(n)
end