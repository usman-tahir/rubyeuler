# http://projecteuler.net/problem=43

pandigital_numbers = [0,1,2,3,4,5,6,7,8,9]
pandigital_permutations = pandigital_numbers.permutation.to_a

def pandigital_permutations.substring_divisible?
  have_substring_divisble_property =[]
  self.each do |number|
    next if number[0] == "0"
    trial_number = (number[0].to_s +
      number[1].to_s +
      number[2].to_s +
      number[3].to_s +
      number[4].to_s +
      number[5].to_s +
      number[6].to_s +
      number[7].to_s +
      number[8].to_s +
      number[9].to_s)
    if trial_number[1..3].to_i % 2 == 0
      if trial_number[2..4].to_i % 3 == 0
        if trial_number[3..5].to_i % 5 == 0
          if trial_number[4..6].to_i % 7 == 0
            if trial_number[5..7].to_i % 11 == 0
              if trial_number[6..8].to_i % 13 == 0
                if trial_number[7..9].to_i % 17 == 0
                  have_substring_divisble_property << trial_number.to_i
                end
              end
            end
          end
        end
      end
    end
  end  
  have_substring_divisble_property
end

puts pandigital_permutations.substring_divisible?.inject(:+)  




