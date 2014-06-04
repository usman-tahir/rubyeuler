# http://rosettacode.org/wiki/Evolutionary_algorithm
start_time = Time.now

TARGET = "METHINKS IT IS LIKE A WEASEL"
EVOLUTIONARY_MATERIAL = ("A".."Z").to_a; EVOLUTIONARY_MATERIAL << " "

def create_origin
  origin = String.new
  28.times do  
    origin << EVOLUTIONARY_MATERIAL.sample.to_s
  end
  return origin
end

def fitness_comparison(array)	
  fittest = String.new
  fitness_counter = 0
  array.each_index do |index|
    position_counter = 0
    child_one_counter = 0
    child_two_counter = 0
    break if array[index+1] == nil
    while position_counter < 28
      child_one_counter += 1 if array[index][position_counter] == TARGET[position_counter]
      child_two_counter += 1 if array[index+1][position_counter] == TARGET[position_counter]
      position_counter += 1
    end
    fittest = array[index] if child_one_counter >= child_two_counter
    fittest = array[index+1] if child_two_counter > child_one_counter
  end
  return fittest
end

def mutate(string)
  mutation_array = string.scan(/./).to_a
  mutation_counter = 0
  while mutation_counter < 28
    if rand(1..1200) == 42 # each character has a 1 in 1200 chance of mutating		
      mutation_array[mutation_counter] = EVOLUTIONARY_MATERIAL.sample
    else
    end
    mutation_counter += 1
  end
  return mutation_array.join
end

def children(parent)
  children =[]
  100.times do
    children << mutate(parent)
  end
  return children
end		

parent = create_origin
generation = 0
until parent == TARGET
  generation += 1
  parent = fitness_comparison(children(parent))
  puts generation.to_s + ": " + parent
end

puts ((Time.now - start_time).to_f).to_s + "s"
