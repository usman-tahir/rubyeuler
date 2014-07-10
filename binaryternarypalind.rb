# http://rosettacode.org/wiki/Find_palindromic_numbers_in_both_binary_and_ternary_bases
start_time = Time.now
binary_and_ternary_palindromes = [0]
counter = 1
until binary_and_ternary_palindromes.count == 6
  if counter.to_s(2) == counter.to_s(2).reverse && counter.to_s(3) == counter.to_s(3).reverse
    binary_and_ternary_palindromes << counter
    puts counter
  end
  counter += 1
end

puts binary_and_ternary_palindromes.inspect
puts ((Time.now-start_time).to_f).to_s + "s"

