# http://projecteuler.net/problem=45

def gen_triangle(nth)
  (nth * (nth + 1)) / 2
end

def is_pentagonal?(number)
  ((Math.sqrt((24 * number) + 1) + 1) / 6) % 1 == 0
end

def is_hexagonal?(number)
  ((Math.sqrt((8 * number) + 1) + 1) /  4) % 1 == 0
end

def test_triangle_numbers
  found_flag = false
  nth = 286
  until found_flag == true
    found_flag = true if is_pentagonal?(gen_triangle(nth)) && is_hexagonal?(gen_triangle(nth))
    nth += 1 if found_flag == false
  end
  gen_triangle(nth)
end    

puts test_triangle_numbers


