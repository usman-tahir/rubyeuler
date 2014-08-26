# http://projecteuler.net/problem=63

def nth_powers
  nth_power_ints = []
  (1..100).each do |exponent| # just a guess at the max possibility
    (1..9).each do |base|
      test_number = base ** exponent
      if test_number.to_s.length == exponent
        nth_power_ints << test_number
      end
    end
  end
  nth_power_ints.sort
end

puts nth_powers.count