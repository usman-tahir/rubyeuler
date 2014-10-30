# https://projecteuler.net/problem=73

def reduced_fractions_in_range(max_denominator)
  fractions = []
  (1..max_denominator).each do |denominator|
    (denominator/3..denominator/2).each do |numerator|
      fraction = numerator/denominator.to_r
      if fraction > 1/3.to_r && fraction < 1/2.to_r
        puts fraction
        fractions << fraction
      end  
    end
  end
  fractions.uniq
end

puts reduced_fractions_in_range(12_000).count      