# http://projecteuler.net/problem=95
load 'eulermethods.rb'

def find_aliquot_sequence(starting_number)
  aliquot_sequence = []
  test_value = starting_number.sum_divisors
  flag = false
  until flag == true
    flag = true if aliquot_sequence.include?(test_value)
    aliquot_sequence << test_value if test_value == starting_number
    break if aliquot_sequence.include?(test_value)
    aliquot_sequence << test_value
    test_value = test_value.sum_divisors
    break if test_value > 1_000_000
  end
  aliquot_sequence
end   

def amicable_chain?(starting_number)
  find_aliquot_sequence(starting_number)[-1] == starting_number
end

def find_longest_amicable_chain
  longest_amicable_chain = []
  (1..500_000).each do |number|
    puts number
    if amicable_chain?(number)
      if find_aliquot_sequence(number).count > longest_amicable_chain.count
        longest_amicable_chain = find_aliquot_sequence(number)
      end
    end
  end
  longest_amicable_chain
end

puts find_longest_amicable_chain.min
