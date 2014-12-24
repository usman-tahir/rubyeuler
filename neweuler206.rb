# https://projecteuler.net/problem=206
require 'prime'
# 1_2_3_4_5_6_7_8_9_0
# next to last digit has to be 0
# can omit 00 and work from prior digits
# last is 9; root has to end in 3 or 7

def find_concealed_square
  droot_endings = ["1","4","7","9"]
  (0..9).each do |eighth|
    (0..9).each do |seventh|
      (0..9).each do |sixth|
        (0..9).each do |fifth|
          (0..9).each do |fourth|
            (0..9).each do |third|
              (0..9).each do |second|
                (0..9).each do |first|
                  test_val = "1#{first}2#{second}3#{third}4#{fourth}5#{fifth}6#{sixth}7#{seventh}8#{eighth}9".to_i
                  p test_val
                  next if !droot_endings.include?(digital_root(test_val).to_s)
                  if Math.sqrt(test_val) % 1 == 0
                    return Math.sqrt(test_val) * 10
                  end  
                end
              end
            end
          end
        end
      end
    end
  end      
  return "not found!"
end

def digital_root(number)
  test_val = number
  until test_val.to_s.length == 1
    test_val = test_val.to_s.split(//).map {|d| d.to_i}.inject(:+)
  end
  test_val
end    

p find_concealed_square
