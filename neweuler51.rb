# https://projecteuler.net/problem=51
require 'prime'

def prime_digit_replacements(number=8)
  # 111857 returned true until removing the possibility that the
  # replacement digit can be the same as the digit it replaces
  a = Prime.each(111858)
  loop do
    candidate = a.next
    rep = three_repeats(candidate)
    next unless rep
    key = rep.keys[0]
    cand_array = candidate.to_s.split(//)
    primes = 1
    (1..9).each do |replacement|
      next if replacement == key
      rep[key].each { |i| cand_array[i] = replacement.to_s }
      primes += 1 if cand_array.join.to_i.prime?
    end
    return candidate if primes == number
  end
end

def three_repeats(n)
  d = n.to_s.split(//)
  repeats = []
  (0...d.count-1).each { |i| repeats << i if d.count(d[i]) == 3 }
  # hash to return both the repeated digit and the indices where
  # it's positioned in the number
  return {d[repeats[0]].to_i => repeats} if repeats.count == 3
  return false
end

p prime_digit_replacements
