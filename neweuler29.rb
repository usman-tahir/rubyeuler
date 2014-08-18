# http://projecteuler.net/problem=29

def find_distinct_terms_up_to(number)
  distinct_terms_array =[]
  (2..number).each do |a|
    (2..number).each do |b|
      distinct_terms_array << a ** b
    end
  end
  distinct_terms_array.uniq.count
end

puts find_distinct_terms_up_to(100)      