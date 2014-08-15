# problem 1 from _introduction to graph theory_, chapter 2
# list all eight subsets of set [1,2,3]
problem_one_set = [1,2,3]

def problem_one_set.find_all_subsets
  max_size = self.count
  counter = 1
  subset_array =[]
  until counter > max_size
    subset_array << self.combination(counter).to_a
    counter += 1
  end
  all_subsets =[]
  empty_set =[]
  all_subsets << empty_set
  subset_array.each do |subset|
    subset.each do |subsubset|
      all_subsets << subsubset
    end
  end
  all_subsets    
end  

puts "The subsets of #{problem_one_set.inspect} are: "
puts problem_one_set.find_all_subsets.inspect