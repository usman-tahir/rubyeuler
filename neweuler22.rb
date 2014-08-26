# http://projecteuler.net/problem=22
require 'csv'

def organize_names
  name_set = Array.new
  CSV.foreach("p022_names.txt") do |name|
    name_set.push name
  end
  name_set = name_set[0].sort!
end  

def score_names(array)
  names_to_score = array
  scores = Hash.new
  (('A'..'Z').zip(1..26)).each { |x| scores[x[0]] = x[1]}
  iterator = 0
  accumulator_array = Array.new
  until names_to_score[iterator] == nil
    letter_values = names_to_score[iterator].split('').collect { |x| scores[x]}
    name_value = letter_values.inject(:+)
    accumulator_array.push name_value * (iterator + 1)
    iterator += 1
  end
  accumulator_array
end

puts score_names(organize_names).inject(:+)